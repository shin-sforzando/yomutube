# coding: utf-8
"""
    YouTube Data API v3

    See. [YouTube Data API v3](https://developers.google.com/youtube/v3)

    The version of the OpenAPI document: 1.0.0
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501
from __future__ import annotations

import json
import pprint
import re  # noqa: F401
from typing import Any
from typing import ClassVar
from typing import Dict
from typing import List
from typing import Optional

from openapi_client.models.suggestions_tag_suggestions_inner import (
    SuggestionsTagSuggestionsInner,
)
from pydantic import BaseModel
from pydantic import Field
from pydantic import field_validator
from pydantic import StrictStr

try:
    from typing import Self
except ImportError:
    from typing_extensions import Self


class Suggestions(BaseModel):
    """
    The suggestions object encapsulates suggestions that identify opportunities to improve the video quality or the metadata for the uploaded video. This data can only be retrieved by the video owner. The suggestions object will only be returned if the `processingDetails.tagSuggestionsAvailability` property or the `processingDetails.editorSuggestionsAvailability` property has a value of `available`.
    """  # noqa: E501

    processing_errors: Optional[List[StrictStr]] = Field(
        default=None, alias="processingErrors"
    )
    processing_warnings: Optional[List[StrictStr]] = Field(
        default=None, alias="processingWarnings"
    )
    processing_hints: Optional[List[StrictStr]] = Field(
        default=None, alias="processingHints"
    )
    tag_suggestions: Optional[List[SuggestionsTagSuggestionsInner]] = Field(
        default=None, alias="tagSuggestions"
    )
    editor_suggestions: Optional[List[StrictStr]] = Field(
        default=None, alias="editorSuggestions"
    )
    __properties: ClassVar[List[str]] = [
        "processingErrors",
        "processingWarnings",
        "processingHints",
        "tagSuggestions",
        "editorSuggestions",
    ]

    @field_validator("processing_errors")
    def processing_errors_validate_enum(cls, value):
        """Validates the enum"""
        if value is None:
            return value

        for i in value:
            if i not in (
                "archiveFile",
                "audioFile",
                "docFile",
                "imageFile",
                "notAVideoFile",
                "projectFile",
            ):
                raise ValueError(
                    "each list item must be one of ('archiveFile', 'audioFile', 'docFile', 'imageFile', 'notAVideoFile', 'projectFile')"
                )
        return value

    @field_validator("processing_warnings")
    def processing_warnings_validate_enum(cls, value):
        """Validates the enum"""
        if value is None:
            return value

        for i in value:
            if i not in (
                "hasEditlist",
                "inconsistentResolution",
                "problematicAudioCodec",
                "problematicVideoCodec",
                "unknownAudioCodec",
                "unknownContainer",
                "unknownVideoCodec",
            ):
                raise ValueError(
                    "each list item must be one of ('hasEditlist', 'inconsistentResolution', 'problematicAudioCodec', 'problematicVideoCodec', 'unknownAudioCodec', 'unknownContainer', 'unknownVideoCodec')"
                )
        return value

    @field_validator("processing_hints")
    def processing_hints_validate_enum(cls, value):
        """Validates the enum"""
        if value is None:
            return value

        for i in value:
            if i not in ("nonStreamableMov", "sendBestQualityVideo"):
                raise ValueError(
                    "each list item must be one of ('nonStreamableMov', 'sendBestQualityVideo')"
                )
        return value

    @field_validator("editor_suggestions")
    def editor_suggestions_validate_enum(cls, value):
        """Validates the enum"""
        if value is None:
            return value

        for i in value:
            if i not in (
                "audioQuietAudioSwap",
                "videoAutoLevels",
                "videoCrop",
                "videoStabilize",
            ):
                raise ValueError(
                    "each list item must be one of ('audioQuietAudioSwap', 'videoAutoLevels', 'videoCrop', 'videoStabilize')"
                )
        return value

    model_config = {"populate_by_name": True, "validate_assignment": True}

    def to_str(self) -> str:
        """Returns the string representation of the model using alias"""
        return pprint.pformat(self.model_dump(by_alias=True))

    def to_json(self) -> str:
        """Returns the JSON representation of the model using alias"""
        # TODO: pydantic v2: use .model_dump_json(by_alias=True, exclude_unset=True) instead
        return json.dumps(self.to_dict())

    @classmethod
    def from_json(cls, json_str: str) -> Self:
        """Create an instance of Suggestions from a JSON string"""
        return cls.from_dict(json.loads(json_str))

    def to_dict(self) -> Dict[str, Any]:
        """Return the dictionary representation of the model using alias.

        This has the following differences from calling pydantic's
        `self.model_dump(by_alias=True)`:

        * `None` is only added to the output dict for nullable fields that
          were set at model initialization. Other fields with value `None`
          are ignored.
        """
        _dict = self.model_dump(
            by_alias=True,
            exclude={},
            exclude_none=True,
        )
        # override the default output from pydantic by calling `to_dict()` of each item in tag_suggestions (list)
        _items = []
        if self.tag_suggestions:
            for _item in self.tag_suggestions:
                if _item:
                    _items.append(_item.to_dict())
            _dict["tagSuggestions"] = _items
        return _dict

    @classmethod
    def from_dict(cls, obj: Dict) -> Self:
        """Create an instance of Suggestions from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate(
            {
                "processingErrors": obj.get("processingErrors"),
                "processingWarnings": obj.get("processingWarnings"),
                "processingHints": obj.get("processingHints"),
                "tagSuggestions": [
                    SuggestionsTagSuggestionsInner.from_dict(_item)
                    for _item in obj.get("tagSuggestions")
                ]
                if obj.get("tagSuggestions") is not None
                else None,
                "editorSuggestions": obj.get("editorSuggestions"),
            }
        )
        return _obj
