import asyncio
import os
from datetime import datetime

from firebase_admin import firestore
from firebase_admin import firestore_async
from firebase_admin import initialize_app
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
from utils import JST

app = initialize_app()
options.set_global_options(region=options.SupportedRegion.ASIA_NORTHEAST1)


@https_fn.on_request()
def on_request_optional_execution(req: https_fn.Request) -> https_fn.Response:
    print("Optional execution was invoked.")
    return https_fn.Response(f"{req=}")


@scheduler_fn.on_schedule(
    schedule="0 6,12,18 * * *", timezone=scheduler_fn.Timezone("Asia/Tokyo")
)
def scheduled_execution_3_times_daily(event: scheduler_fn.ScheduledEvent) -> None:
    print(f"{event.job_name=}")
    print(f"{event.schedule_time=}")


def get_youtube_client() -> Resource:
    api_key = os.environ.get("YouTube_DATA_API_KEY")
    if not api_key:
        raise ValueError("The environment variable 'YouTube_DATA_API_KEY' is not set.")
    youtube_client = build("youtube", "v3", developerKey=api_key)
    return youtube_client


def get_video_categories(
    update: bool = True, hl: str = "ja_JP", regionCode: str = "JP"
) -> FirestoreVideoCategoryList | None:
    firestore_client = firestore.client()
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
    try:
        VideoCategoryList.model_validate(response)
        response["updated_at"] = datetime.now(JST)
        firestore_vcl = FirestoreVideoCategoryList.model_validate(response)
        firestore_client.collection("video_categories").document(hl).set(response)
        return firestore_vcl
    except ValidationError as ve:
        print(ve)
        return None


async def fetch_popular_videos(
    maxResult: int = 10, hl: str = "ja_JP", regionCode: str = "JP", **kwargs
):
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
    try:
        vl = VideoList.model_validate(response)
        for video in vl.items:
            video_dict = video.model_dump()
            Video.model_validate(video_dict)
            video_dict["created_at"] = datetime.now(JST)
            video_dict["updated_at"] = datetime.now(JST)
            fv = FirestoreVideo.model_validate(video_dict)
            print(f"{fv=}")
            await firestore_client.collection("videos").document(fv.id).set(video_dict)
            print(f"Finished saving {fv.id}.")
    except ValidationError as ve:
        print(ve)


async def main() -> None:
    """Entry point for local execution."""
    get_video_categories()
    get_video_categories(update=False, hl="en_US", regionCode="US")
    await fetch_popular_videos()


if __name__ == "__main__":
    asyncio.run(main())
