import os
from datetime import datetime
from urllib.parse import parse_qs
from urllib.parse import urlparse

from caption import get_caption
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
from models import Video
from models import VideoCategoryList
from models import VideoList
from pydantic import ValidationError
from summarize import get_keywords
from summarize import get_summarized_text
from utils import JST
from utils import NO_CAPTION_MESSAGE
from utils import print_json_response

app = initialize_app()
options.set_global_options(region=options.SupportedRegion.ASIA_NORTHEAST1)


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
    schedule="0 */5 * * *",
    timezone=scheduler_fn.Timezone("Asia/Tokyo"),
    secrets=["YOUTUBE_DATA_API_KEY"],
)  # type: ignore
def scheduled_execution_4_times_daily(event: scheduler_fn.ScheduledEvent) -> None:
    """Periodic execution trigger that run 4 times a day.

    Args:
        event (scheduler_fn.ScheduledEvent): A ScheduleEvent that is passed to the function handler.
    """
    print(f"{event.job_name} at {event.schedule_time}")
    updated_count = fetch_popular_videos(max_result=5, region_code="JP")
    print(f"Updated {updated_count} videos.")


@scheduler_fn.on_schedule(
    timeout_sec=540,
    memory=options.MemoryOption.GB_1,
    schedule="0 */7 * * *",
    timezone=scheduler_fn.Timezone("Asia/Tokyo"),
    secrets=["YOUTUBE_DATA_API_KEY"],
)  # type: ignore
def scheduled_execution_3_times_daily(event: scheduler_fn.ScheduledEvent) -> None:
    """Periodic execution trigger that run 3 times a day.

    Args:
        event (scheduler_fn.ScheduledEvent): A ScheduleEvent that is passed to the function handler.
    """
    print(f"{event.job_name} at {event.schedule_time}")
    updated_count = fetch_popular_videos(max_result=5, region_code="US")
    print(f"Updated {updated_count} videos.")


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
            print(f"Summarized caption: {summarized_caption}")
            print(f"Keywords: {keywords}")
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


def fetch_video_by_url(url: str, hl: str = "ja_JP", region_code: str = "JP") -> None:
    """
    Fetches a video by its URL.

    Args:
        url (str): The URL of the video.
        hl (str, optional): The language code for the video's localization. Defaults to "ja_JP".
        region_code (str, optional): The region code for the video's localization. Defaults to "JP".

    Returns:
        None
    """
    parsed_url = urlparse(url)
    query_params = parse_qs(parsed_url.query)
    video_id = query_params["v"][0]
    fetch_video_by_id(video_id, hl, region_code)


def fetch_popular_videos(
    max_result: int = 10, hl: str = "ja_JP", region_code: str = "JP", **kwargs
) -> int:
    """
    Fetches popular videos from YouTube using the YouTube Data API.

    Args:
        max_result (int): The maximum number of videos to fetch. Default is 10.
        hl (str): The language parameter for the API request. Default is "ja_JP".
        region_code (str): The region code parameter for the API request. Default is "JP".
        **kwargs: Additional keyword arguments to be passed to the API request.

    Returns:
        int: The number of videos that were successfully fetched and stored.

    Raises:
        Any exceptions that occur during the API request.
    """
    updated_count = 0
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
            updated_count += 1
    except Exception as e:
        print(e)
    return updated_count


def main() -> None:
    """Entry point for local (debug) execution."""
    fetch_popular_videos(max_result=3)
    fetch_popular_videos(max_result=3, region_code="US")
    fetch_video_by_id("vLOmOiIgCDg")
    fetch_video_by_url("https://www.youtube.com/watch?v=6P0jGPefV8U")


if __name__ == "__main__":
    main()
