import json
import os
from datetime import datetime

from firebase_admin import firestore
from firebase_admin import initialize_app
from firebase_functions import https_fn
from firebase_functions import options
from firebase_functions import scheduler_fn
from googleapiclient.discovery import build
from googleapiclient.discovery import Resource
from models import VideoCategoryList
from periodic_models import PeriodicVideoCategoryList
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
    hl: str = "ja_JP", regionCode: str = "JP"
) -> VideoCategoryList | None:
    firestore_client = firestore.client()

    def get_video_categories_from_firestore() -> VideoCategoryList | None:
        doc_ref = firestore_client.collection("video_categories").document(hl)
        doc = doc_ref.get()
        if doc.exists:
            try:
                periodic_vcl = PeriodicVideoCategoryList.model_validate(doc.to_dict())
                if periodic_vcl.is_expired():
                    print(f"video_categories/{doc.id} has expired.")
                    return None
                else:
                    return periodic_vcl
            except ValidationError as ve:
                print(ve)
                return None
        else:
            print(f"video_categories/{doc.id} does not exist.")
            return None

    vcl = get_video_categories_from_firestore()
    if vcl:
        print(f"Valid video_categories/{hl} has been stored.")
        return vcl
    else:
        print(f"Valid video_categories/{hl} has not yet been stored.")
        youtube_client = get_youtube_client()
        request = youtube_client.videoCategories().list(  # type: ignore
            part="snippet", regionCode=regionCode, hl=hl
        )
        response = request.execute()
        try:
            VideoCategoryList.model_validate(response)
            response["updated_at"] = datetime.now(JST)
            firestore_client.collection("video_categories").document(hl).set(response)
            return get_video_categories_from_firestore()
        except ValidationError as ve:
            print(ve)
            return None


def fetch_popular_videos(
    maxResult: int = 10, hl: str = "ja_JP", regionCode: str = "JP", **kwargs
) -> None:
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
    formatted_response = json.dumps(response, indent=2, ensure_ascii=False)
    print(f"{formatted_response}")


def main() -> None:
    """Entry point for local execution."""
    print(get_video_categories())
    print(get_video_categories(hl="en_US", regionCode="US"))
    # fetch_popular_videos()


if __name__ == "__main__":
    main()
