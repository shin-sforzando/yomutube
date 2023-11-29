# Localized

The `snippet.localized` object contains either a localized title and description for the video or the title in the default language for the video's metadata. - Localized text is returned in the resource snippet if the `videos.list` request used the hl parameter to specify a language for which localized text should be returned and localized text is available in that language. - Metadata for the default language is returned if an hl parameter value is not specified or a value is specified but localized metadata is not available for the specified language. The property contains a read-only value. Use the `localizations` object to add, update, or delete localized titles.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **str** | The localized video title. | [optional]
**description** | **str** | The localized video description. | [optional]

## Example

```python
from openapi_client.models.localized import Localized

# TODO update the JSON string below
json = "{}"
# create an instance of Localized from a JSON string
localized_instance = Localized.from_json(json)
# print the JSON string representation of the object
print Localized.to_json()

# convert the object into a dict
localized_dict = localized_instance.to_dict()
# create an instance of Localized from a dict
localized_form_dict = localized.from_dict(localized_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
