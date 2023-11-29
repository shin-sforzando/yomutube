# Suggestions

The suggestions object encapsulates suggestions that identify opportunities to improve the video quality or the metadata for the uploaded video. This data can only be retrieved by the video owner. The suggestions object will only be returned if the `processingDetails.tagSuggestionsAvailability` property or the `processingDetails.editorSuggestionsAvailability` property has a value of `available`.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**processing_errors** | **List[str]** |  | [optional]
**processing_warnings** | **List[str]** |  | [optional]
**processing_hints** | **List[str]** |  | [optional]
**tag_suggestions** | [**List[SuggestionsTagSuggestionsInner]**](SuggestionsTagSuggestionsInner.md) |  | [optional]
**editor_suggestions** | **List[str]** |  | [optional]

## Example

```python
from openapi_client.models.suggestions import Suggestions

# TODO update the JSON string below
json = "{}"
# create an instance of Suggestions from a JSON string
suggestions_instance = Suggestions.from_json(json)
# print the JSON string representation of the object
print Suggestions.to_json()

# convert the object into a dict
suggestions_dict = suggestions_instance.to_dict()
# create an instance of Suggestions from a dict
suggestions_form_dict = suggestions.from_dict(suggestions_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
