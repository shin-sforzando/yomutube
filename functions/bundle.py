from datetime import datetime
from datetime import timedelta

from firebase_admin import firestore
from firebase_admin import initialize_app
from firebase_admin import storage
from google.cloud.firestore_bundle import FirestoreBundle
from utils import JST


app = initialize_app(options={"storageBucket": "yomutube-f5b5d.appspot.com"})
bucket = storage.bucket()


def make_bundle(target_date: str) -> str:
    """
    Create a Firestore bundle for a given target date.

    Args:
        target_date (str): The target date in the format 'YYYY-MM-DD'.

    Returns:
        str: The public URL of the uploaded Firestore bundle.
    """
    target_datetime = datetime.strptime(target_date, "%Y-%m-%d").astimezone(JST)
    next_datetime = target_datetime + timedelta(days=1)
    firestore_client = firestore.client()
    bundle = FirestoreBundle(target_date)
    bundle.add_named_query(
        target_date,
        firestore_client.collection("videos")
        .order_by("updated_at", direction="DESCENDING")
        .where("updated_at", ">=", target_datetime)
        .where("updated_at", "<", next_datetime),
    )
    serialized = bundle.build()
    blob = bucket.blob(f"firestore-bundle/{target_date}.bundle")
    blob.upload_from_string(serialized)
    blob.make_public()
    return f"https://storage.googleapis.com/yomutube-f5b5d.appspot.com/firestore-bundle/{target_date}.bundle"


def main() -> None:
    make_bundle("2024-02-28")
    print(list(bucket.list_blobs()))


if __name__ == "__main__":
    main()
