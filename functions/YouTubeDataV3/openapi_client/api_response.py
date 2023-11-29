"""API response object."""
from __future__ import annotations

from typing import Any
from typing import Dict
from typing import Generic
from typing import Optional
from typing import TypeVar

from pydantic import BaseModel
from pydantic import Field
from pydantic import StrictBytes
from pydantic import StrictInt
from pydantic import StrictStr

T = TypeVar("T")


class ApiResponse(BaseModel, Generic[T]):
    """
    API response object
    """

    status_code: StrictInt = Field(description="HTTP status code")
    headers: Optional[Dict[StrictStr, StrictStr]] = Field(
        None, description="HTTP headers"
    )
    data: T = Field(description="Deserialized data given the data type")
    raw_data: StrictBytes = Field(description="Raw data (HTTP response body)")

    model_config = {"arbitrary_types_allowed": True}
