from datetime import datetime

from models import Video
from models import VideoCategoryList
from pydantic import BaseModel
from pydantic import ConfigDict
from pydantic import Field
from utils import JST
from utils import print_json


class FirestoreVideoCategoryList(VideoCategoryList):
    """Represents a list of video categories stored in Firestore."""

    updated_at: datetime = Field(
        None, description="The date and time when the document was last updated."
    )


class Caption(BaseModel):
    """Represents the caption of a video."""

    raw: str = Field("", description="The raw caption of the video.")
    summarized: str = Field("", description="The summarized caption of the video.")
    keywords: list[str] = Field([], description="The keywords extracted from caption.")


class FirestoreVideo(Video):
    """Represents a video stored in Firestore."""

    model_config = ConfigDict(use_enum_values=True)

    created_at: datetime = Field(
        None, description="The timestamp of the video was stored."
    )
    updated_at: datetime = Field(
        datetime.now(JST), description="The timestamp of the video was last updated."
    )
    caption: Caption


if __name__ == "__main__":
    print_json(FirestoreVideoCategoryList.model_json_schema())
    print_json(FirestoreVideo.model_json_schema())
