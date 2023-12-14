import os
import re
from datetime import datetime

from firebase_admin import firestore
from firebase_admin import initialize_app
from firebase_admin.exceptions import FirebaseError
from firebase_functions import https_fn
from firebase_functions import options
from firebase_functions import scheduler_fn
from firestore_models import FirestoreVideo
from firestore_models import FirestoreVideoCategoryList
from googleapiclient.discovery import build
from googleapiclient.discovery import Resource
from langchain.chains import LLMChain
from langchain.chains.summarize import load_summarize_chain
from langchain.docstore.document import Document
from langchain.document_loaders import YoutubeLoader
from langchain.llms import VertexAI
from langchain.prompts import PromptTemplate
from langchain.text_splitter import RecursiveCharacterTextSplitter
from models import Video
from models import VideoCategoryList
from models import VideoList
from pydantic import ValidationError
from utils import JST
from utils import print_json_response

app = initialize_app()
options.set_global_options(region=options.SupportedRegion.ASIA_NORTHEAST1)

NO_CAPTION_MESSAGE = "【No captions were available.】"


@https_fn.on_request(cors=True, secrets=["YOUTUBE_DATA_API_KEY"])  # type: ignore
def on_request_optional_execution(req: https_fn.Request) -> https_fn.Response:
    """HTTP trigger for execution at arbitrary timing.

    Args:
        req (https_fn.Request): The raw request handled by the callable.

    Returns:
        https_fn.Response: The response object that is used by default in Flask.
    """
    print("Optional execution was invoked.")
    return https_fn.Response(f"{req=}")


@scheduler_fn.on_schedule(
    timeout_sec=540,
    memory=options.MemoryOption.GB_1,
    schedule="50 23 * * 5",
    timezone=scheduler_fn.Timezone("Asia/Tokyo"),
    secrets=["YOUTUBE_DATA_API_KEY"],
)  # type: ignore
def scheduled_execution_every_weekend(event: scheduler_fn.ScheduledEvent) -> None:
    """Periodic execution trigger that run every Friday at 23:50.

    Args:
        event (scheduler_fn.ScheduledEvent): A ScheduleEvent that is passed to the function handler.
    """
    print(f"{event.job_name} at {event.schedule_time}")
    get_video_categories(update=True)


@scheduler_fn.on_schedule(
    timeout_sec=540,
    memory=options.MemoryOption.GB_1,
    schedule="0 */4 * * *",
    timezone=scheduler_fn.Timezone("Asia/Tokyo"),
    secrets=["YOUTUBE_DATA_API_KEY"],
)  # type: ignore
def scheduled_execution_6_times_daily(event: scheduler_fn.ScheduledEvent) -> None:
    """Periodic execution trigger that run 6 times a day.

    Args:
        event (scheduler_fn.ScheduledEvent): A ScheduleEvent that is passed to the function handler.
    """
    print(f"{event.job_name} at {event.schedule_time}")
    fetch_popular_videos(max_result=3)


def get_youtube_client() -> Resource:
    """Initialize and return a YouTube Data API client.

    Raises:
        ValueError: YOUTUBE_DATA_API_KEY is not set properly.

    Returns:
        Resource: Google API Client Resource of YouTube Data API v3.
    """
    api_key = os.environ.get("YOUTUBE_DATA_API_KEY")
    if not api_key:
        raise ValueError("The environment variable 'YOUTUBE_DATA_API_KEY' is not set.")
    youtube_client = build("youtube", "v3", developerKey=api_key)
    return youtube_client


def increment_youtube_data_api_quota(increment: int = 1) -> None:
    """
    Upsert the daily YouTube Data API estimated quota consumption.

    Args:
        increment (int): Estimated quota consumption.

    Returns:
        None
    """
    firestore_client = firestore.client()  # type: ignore
    firestore_client.collection("stats").document(
        datetime.now(JST).strftime("%Y-%m-%d")
    ).set(
        {"youtube_data_api_quota": firestore.Increment(increment)}, merge=True  # type: ignore
    )


def get_formatted_text(text: str) -> str:
    """
    Removes square brackets and their contents from the input text.

    Args:
        text (str): The input text.

    Returns:
        str: The formatted text with square brackets removed.
    """
    text = re.sub(r"\[.*\]", "", text)
    return text


def get_caption(
    video: Video, preferred_language: str = "ja", lower_limit_chars: int = 256
) -> str:
    """
    Retrieves the caption for a given video.

    Args:
        video (Video): The video object for which to retrieve the caption.
        preferred_language (str, optional): The preferred language for the caption. Defaults to "ja".
        lower_limit_chars (int, optional): The lower limit of characters for the caption. Defaults to 64.

    Returns:
        str: The formatted caption text.

    Raises:
        Exception: If an error occurs during the caption retrieval process.
    """
    try:
        loader = YoutubeLoader(
            video_id=video.id,
            add_video_info=False,
            language=["ja", "en"],
            translation=preferred_language,
            continue_on_failure=True,
        )
        documents = loader.load()
        if 0 < len(documents):
            formatted_text = get_formatted_text(documents[0].page_content)
            if lower_limit_chars < len(formatted_text):
                return formatted_text
            else:
                print(f'"{formatted_text}" ({len(formatted_text)} chars) is too short.')
    except Exception as e:
        print(e)
    print(f"Failed to retrieve caption for {video.id}.")
    return NO_CAPTION_MESSAGE


def get_summarized_text(
    text: str,
    chunk_size: int = 16384,
    temperature: float = 0.3,
    max_output_tokens: int = 2048,
) -> str:
    """
    Summarizes the given text by extracting audio subtitles from a YouTube video.

    Args:
        text (str): The input text to be summarized.
        chunk_size (int, optional): The size of each text chunk for processing. Defaults to 8192.
        temperature (float, optional): The temperature parameter for text generation. Defaults to 0.2.
        max_output_tokens (int, optional): The maximum number of tokens in the generated summary. Defaults to 2048.

    Returns:
        str: The summarized text.
    """
    first_template = """以下の文章はYouTubeの動画から抜き出した音声字幕です。
文章は句読点が欠落していたり、表記揺れがあったりします。
動画を見てない人にもわかりやすく800文字を目安に要約し、結果だけ出力してください。
------
{text}
------
"""
    first_prompt = PromptTemplate(input_variables=["text"], template=first_template)
    subsequent_template = """以下の文章はYouTubeの動画から抜き出した音声字幕です。
文章は句読点が欠落していたり、表記揺れがあったりします。
動画を見てない人にもわかりやすく800文字を目安に要約し、結果だけ出力してください。
------
{existing_answer}
{text}
------
"""
    subsequent_prompt = PromptTemplate(
        input_variables=["existing_answer", "text"], template=subsequent_template
    )
    vertex_ai = VertexAI(
        location="asia-northeast1",
        model_name="text-bison-32k",
        temperature=temperature,
        max_output_tokens=max_output_tokens,
    )
    text_splitter = RecursiveCharacterTextSplitter(
        chunk_size=chunk_size, chunk_overlap=0
    )
    texts = text_splitter.split_text(text)
    print(
        f"{len(text)} chars divided into {len(texts)} chunks by {chunk_size} like: {texts[0][:100]} ..."
    )
    docs = [Document(page_content=text) for text in texts]
    chain = load_summarize_chain(
        vertex_ai,
        chain_type="refine",
        question_prompt=first_prompt,
        refine_prompt=subsequent_prompt,
        verbose=True,
    )
    result = chain.run(docs)
    return result


def get_keywords(
    text: str,
    existing_keywords: list[str] = [],
    temperature: float = 0.0,
    max_output_tokens: int = 1024,
) -> list[str]:
    """
    Extracts keywords from the given text using a language model.

    Args:
        text (str): The input text from which keywords will be extracted.
        temperature (float, optional): The temperature parameter for the language model.
            Higher values (e.g., 1.0) result in more random outputs, while lower values (e.g., 0.2)
            make the outputs more focused and deterministic. Defaults to 0.2.
        max_output_tokens (int, optional): The maximum number of tokens in the generated output.
            Defaults to 1024.

    Returns:
        list[str]: A list of extracted keywords.
    """
    prompt_template = """以下の文章から、最大10個のキーワードを抽出し、 `|` で区切って重要度の高い順に出力してください。
------
{text}
------
"""
    prompt = PromptTemplate(input_variables=["text"], template=prompt_template)
    vertex_ai = VertexAI(
        location="asia-northeast1",
        model_name="text-bison-32k",
        temperature=temperature,
        max_output_tokens=max_output_tokens,
    )
    chain = LLMChain(llm=vertex_ai, prompt=prompt, verbose=True)
    result = chain({"text": text})["text"]
    result = [keyword.strip() for keyword in result.split("|")]
    print(f"Existing keywords: {existing_keywords}")
    print(f"Extracted keywords: {result}")
    result = list(
        set([keyword for keyword in result if keyword != ""] + existing_keywords)
    )
    print(f"Keywords: {result}")
    return result


def get_video_categories(
    update: bool = True, hl: str = "ja_JP", regionCode: str = "JP"
) -> FirestoreVideoCategoryList | None:
    """
    Retrieves the video categories from Firestore or YouTube API and returns a FirestoreVideoCategoryList object or None if an error occurred.

    Args:
        update (bool, optional): Flag indicating whether to update the categories from YouTube API. Defaults to True.
        hl (str, optional): The language code for the categories. Defaults to "ja_JP".
        regionCode (str, optional): The region code for the categories. Defaults to "JP".

    Returns:
        FirestoreVideoCategoryList | None: The retrieved video categories as a FirestoreVideoCategoryList object,
        or None if an error occurred.
    """
    firestore_client = firestore.client()  # type: ignore
    youtube_client = get_youtube_client()
    if not update:
        doc = firestore_client.collection("video_categories").document(hl).get()
        if doc.exists:
            try:
                vcl = FirestoreVideoCategoryList.model_validate(doc.to_dict())
                return vcl
            except ValidationError as ve:
                print(ve)
    request = youtube_client.videoCategories().list(  # type: ignore
        part="snippet",
        hl=hl,
        regionCode=regionCode,
    )
    response = request.execute()
    increment_youtube_data_api_quota(1)
    try:
        VideoCategoryList.model_validate(response)
        response["updated_at"] = datetime.now(JST)
        firestore_vcl = FirestoreVideoCategoryList.model_validate(response)
        firestore_client.collection("video_categories").document(hl).set(response)
        return firestore_vcl
    except ValidationError as ve:
        print(ve)
        return None
    except FirebaseError as fe:
        print(fe)
        return None


def check_existing_video(video: str | Video) -> bool:
    """
    Check if a video already exists in the Firestore database.

    Args:
        video (str | Video): The video ID or a Video object.

    Returns:
        bool: True if the video already exists, False otherwise.
    """
    video_id = video if isinstance(video, str) else video.id
    firestore_client = firestore.client()  # type: ignore
    try:
        existing_video_ref = firestore_client.collection("videos").document(video_id)
        existing_video = existing_video_ref.get()
        if existing_video.exists:
            print(f"{video_id} already exists.")
            """If a correctly stored video already exists, update `updated_at` and go to the next video processing."""
            fv = FirestoreVideo.model_validate(existing_video.to_dict())
            fv.model_dump()
            raw_caption = get_caption(fv)
            if raw_caption != fv.caption.raw:
                print(f"{video_id} caption has been updated and will be restored.")
                summarized_caption = NO_CAPTION_MESSAGE  # Initialize "summarized_caption" variable with NO_CAPTION_MESSAGE
                existing_keywords = fv.snippet.tags or []
                keywords = existing_keywords
                if raw_caption != NO_CAPTION_MESSAGE:
                    summarized_caption = get_summarized_text(raw_caption)
                    keywords = get_keywords(
                        summarized_caption, existing_keywords=existing_keywords
                    )
                existing_video_ref.update(
                    {
                        "caption": {
                            "raw": raw_caption,
                            "summarized": summarized_caption,
                            "keywords": keywords,
                        },
                    }
                )
            existing_video_ref.update({"updated_at": datetime.now(JST)})
            return True
    except Exception as e:
        print(e)
    return False


def store_video(video: Video) -> None:
    """
    Stores the given video in Firestore.

    Args:
        video (Video): The video to be stored.

    Returns:
        None
    """
    firestore_client = firestore.client()  # type: ignore
    try:
        video_dict = video.model_dump()
        raw_caption = get_caption(video)
        summarized_caption = NO_CAPTION_MESSAGE
        existing_keywords = video.snippet.tags or []
        keywords = existing_keywords
        if raw_caption != NO_CAPTION_MESSAGE:
            summarized_caption = get_summarized_text(raw_caption)
            keywords = get_keywords(
                summarized_caption, existing_keywords=existing_keywords
            )
        video_dict["created_at"] = datetime.now(JST)
        video_dict["updated_at"] = datetime.now(JST)
        video_dict["caption"] = {
            "raw": raw_caption,
            "summarized": summarized_caption,
            "keywords": keywords,
        }
        fv = FirestoreVideo.model_validate(video_dict)
        firestore_client.collection("videos").document(fv.id).set(video_dict)
        print(f"Finished storing {fv.id}.")
    except Exception as e:
        print(e)


def fetch_video_by_id(
    video_id: str, hl: str = "ja_JP", region_code: str = "JP"
) -> None:
    """
    Fetches a video by its ID from YouTube and stores it if it doesn't already exist.

    Args:
        video_id (str): The ID of the video to fetch.
        hl (str, optional): The language parameter for the YouTube API. Defaults to "ja_JP".
        region_code (str, optional): The region code parameter for the YouTube API. Defaults to "JP".
    """
    if check_existing_video(video_id):
        return
    youtube_client = get_youtube_client()
    request = youtube_client.videos().list(  # type: ignore
        part="snippet,contentDetails,statistics",
        id=video_id,
        hl=hl,
        regionCode=region_code,
    )
    response = request.execute()
    increment_youtube_data_api_quota(1)
    print_json_response(response)
    try:
        vl = VideoList.model_validate(response)
        for video in vl.items:
            store_video(video)
    except Exception as e:
        print(e)


def fetch_popular_videos(
    max_result: int = 10, hl: str = "ja_JP", region_code: str = "JP", **kwargs
) -> None:
    """
    Updates the popular videos in the Firestore database.

    Args:
        maxResult (int): The maximum number of videos to retrieve. Default is 10.
        hl (str): The language code for the video's metadata. Default is "ja_JP".
        regionCode (str): The region code for the videos. Default is "JP".
        **kwargs: Additional keyword arguments to be passed to the YouTube API.

    Returns:
        None
    """
    youtube_client = get_youtube_client()
    request = youtube_client.videos().list(  # type: ignore
        part="snippet,contentDetails,statistics",
        chart="mostPopular",
        maxResults=max_result,
        hl=hl,
        regionCode=region_code,
        **kwargs,
    )
    response = request.execute()
    increment_youtube_data_api_quota(1)
    try:
        vl = VideoList.model_validate(response)
        for video in vl.items:
            if check_existing_video(video):
                continue
            store_video(video)
    except Exception as e:
        print(e)


def main() -> None:
    """Entry point for local (debug) execution."""
    fetch_popular_videos(max_result=3)
    fetch_video_by_id("amCzO2awqlQ")
    fetch_video_by_id("w1gn81SaHqY")


if __name__ == "__main__":
    main()
