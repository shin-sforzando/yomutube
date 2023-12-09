from datetime import datetime

from models import VideoCategoryList
from pydantic import Field


class FirestoreVideoCategoryList(VideoCategoryList):
    updated_at: datetime = Field(
        None, description="The date and time when the document was last updated."
    )
