import string
from datetime import datetime

from models import Video
from models import VideoCategoryList
from pydantic import BaseModel
from pydantic import ConfigDict
from pydantic import Field


class FirestoreVideoCategoryList(VideoCategoryList):
    """Represents a list of video categories stored in Firestore."""

    updated_at: datetime = Field(
        None, description="The date and time when the document was last updated."
    )


class Caption(BaseModel):
    """Represents the caption of a video."""

    row: str = Field("", description="The row caption of the video.")
    s: str = Field("", description="The s-size summary of the video.")
    m: str = Field("", description="The m-size summary of the video.")
    l: str = Field("", description="The l-size summary of the video.")
    keywords: list[str] = Field([], description="The keywords extracted from caption.")


class FirestoreVideo(Video):
    """Represents a video stored in Firestore."""

    model_config = ConfigDict(use_enum_values=True)

    created_at: datetime = Field(
        None, description="The date and time when the document was created."
    )
    updated_at: datetime = Field(
        None, description="The date and time when the document was last updated."
    )
    caption: Caption
