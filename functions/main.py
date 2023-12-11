import asyncio
import os
from datetime import datetime

from firebase_admin import firestore
from firebase_admin import firestore_async
from firebase_admin import initialize_app
from firebase_admin.exceptions import FirebaseError
from firebase_functions import https_fn
from firebase_functions import options
from firebase_functions import scheduler_fn
from firestore_models import FirestoreVideo
from firestore_models import FirestoreVideoCategoryList
from googleapiclient.discovery import build
from googleapiclient.discovery import Resource
from langchain.document_loaders import YoutubeLoader
from models import Video
from models import VideoCategoryList
from models import VideoList
from pydantic import ValidationError
from utils import JST

app = initialize_app()
options.set_global_options(region=options.SupportedRegion.ASIA_NORTHEAST1)


@https_fn.on_request(cors=True, secrets=["YOUTUBE_DATA_API_KEY"])
async def on_request_optional_execution(req: https_fn.Request) -> https_fn.Response:
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
    schedule="50 23 * * 5",
    timezone=scheduler_fn.Timezone("Asia/Tokyo"),
    secrets=["YOUTUBE_DATA_API_KEY"],
)
async def scheduled_execution_every_weekend(event: scheduler_fn.ScheduledEvent) -> None:
    """Periodic execution trigger that run every Friday at 23:50.

    Args:
        event (scheduler_fn.ScheduledEvent): A ScheduleEvent that is passed to the function handler.
    """
    print(f"{event.job_name} at {event.schedule_time}")
    await get_video_categories(update=True)


@scheduler_fn.on_schedule(
    timeout_sec=540,
    schedule="0 4,12,20 * * *",
    timezone=scheduler_fn.Timezone("Asia/Tokyo"),
    secrets=["YOUTUBE_DATA_API_KEY"],
)
async def scheduled_execution_3_times_daily(event: scheduler_fn.ScheduledEvent) -> None:
    """Periodic execution trigger that run three times a day.

    Args:
        event (scheduler_fn.ScheduledEvent): A ScheduleEvent that is passed to the function handler.
    """
    print(f"{event.job_name} at {event.schedule_time}")
    await get_video_categories()


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


async def increment_youtube_data_api_quota(increment: int = 1) -> None:
    """
    Upsert the daily YouTube Data API estimated quota consumption.

    Args:
        increment (int): Estimated quota consumption.

    Returns:
        None
    """
    firestore_client = firestore_async.client()
    await firestore_client.collection("stats").document(
        datetime.now(JST).strftime("%Y-%m-%d")
    ).set({"youtube_data_api_quota": firestore.Increment(increment)}, merge=True)


def get_caption(video: Video, preferred_language: str = "ja") -> str:
    loader = YoutubeLoader(
        video_id=video.id,
        add_video_info=False,
        language=["ja", "en"],
        translation=preferred_language,
        continue_on_failure=True,
    )
    documents = loader.load()
    if len(documents):
        return documents[0].page_content
    return ""


async def get_video_categories(
    update: bool = True, hl: str = "ja_JP", regionCode: str = "JP"
) -> FirestoreVideoCategoryList | None:
    """
    Retrieves the video categories from Firestore or YouTube API.

    Args:
        update (bool, optional): Flag indicating whether to update the categories from YouTube API. Defaults to True.
        hl (str, optional): The language code for the categories. Defaults to "ja_JP".
        regionCode (str, optional): The region code for the categories. Defaults to "JP".

    Returns:
        FirestoreVideoCategoryList | None: The retrieved video categories as a FirestoreVideoCategoryList object,
        or None if an error occurred.
    """
    firestore_client = firestore_async.client()
    youtube_client = get_youtube_client()
    if not update:
        doc = await firestore_client.collection("video_categories").document(hl).get()
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
    await increment_youtube_data_api_quota(1)
    try:
        VideoCategoryList.model_validate(response)
        response["updated_at"] = datetime.now(JST)
        firestore_vcl = FirestoreVideoCategoryList.model_validate(response)
        await firestore_client.collection("video_categories").document(hl).set(response)
        return firestore_vcl
    except ValidationError as ve:
        print(ve)
        return None
    except FirebaseError as fe:
        print(fe)
        return None


async def fetch_popular_videos(
    maxResult: int = 10, hl: str = "ja_JP", regionCode: str = "JP", **kwargs
):
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
    firestore_client = firestore_async.client()
    youtube_client = get_youtube_client()
    request = youtube_client.videos().list(  # type: ignore
        part="snippet,contentDetails,statistics",
        chart="mostPopular",
        regionCode=regionCode,
        maxResults=maxResult,
        hl=hl,
        **kwargs,
    )
    response = request.execute()
    # print(f"Formatted Response: {json.dumps(response, indent=2, ensure_ascii=False)}")
    await increment_youtube_data_api_quota(1)
    try:
        vl = VideoList.model_validate(response)
        for video in vl.items:
            video_dict = video.model_dump()
            Video.model_validate(video_dict)
            existing_video_ref = firestore_client.collection("videos").document(
                video.id
            )
            existing_video = await existing_video_ref.get()
            if existing_video.exists:
                print(f"{video.id} already exists.")
                try:
                    """If a correctly stored video already exists, update `updated_at` and go to the next video processing."""
                    fv = FirestoreVideo.model_validate(existing_video.to_dict())
                    video_dict = fv.model_dump()
                    await existing_video_ref.update({"updated_at": datetime.now(JST)})
                    continue
                except ValidationError as ve:
                    print(ve)
                except Exception as e:
                    print(e)
                    continue
            row_caption = get_caption(video)
            video_dict["created_at"] = datetime.now(JST)
            video_dict["updated_at"] = datetime.now(JST)
            video_dict["caption"] = {
                "row": row_caption,
                "s": "",
                "m": "",
                "l": "",
                "keywords": [],
            }
            fv = FirestoreVideo.model_validate(video_dict)
            await firestore_client.collection("videos").document(fv.id).set(video_dict)
            print(f"Finished saving {fv.id}.")
    except ValidationError as ve:
        print(ve)
    except FirebaseError as fe:
        print(fe)


async def main() -> None:
    """Entry point for local (debug) execution."""
    await fetch_popular_videos()


if __name__ == "__main__":
    asyncio.run(main())
