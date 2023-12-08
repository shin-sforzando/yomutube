from datetime import datetime
from typing import Optional

from models import VideoCategoryList
from pydantic import Field
from utils import JST

EXPIRATION_DAYS_OF_VIDEO_CATEGORY = 7


class PeriodicVideoCategoryList(VideoCategoryList):
    updated_at: Optional[datetime] = Field(
        None, description="The date and time when the document was last updated."
    )

    def is_expired(self) -> bool:
        if self.updated_at:
            return (
                EXPIRATION_DAYS_OF_VIDEO_CATEGORY
                <= (datetime.now(JST) - self.updated_at).days
            )
        else:
            return True
