# CaptionList

List of caption tracks associated with the specified video.

## Properties

| Name      | Type                            | Description                                                                                        | Notes      |
| --------- | ------------------------------- | -------------------------------------------------------------------------------------------------- | ---------- |
| **kind**  | **str**                         | Identifies the API resource&#39;s type. The value will be &#x60;youtube#captionListResponse&#x60;. | [optional] |
| **etag**  | **str**                         | The Etag of this resource.                                                                         | [optional] |
| **items** | [**List[Caption]**](Caption.md) |                                                                                                    | [optional] |

## Example

```python
from youtube_data_v3.models.caption_list import CaptionList

# TODO update the JSON string below
json = "{}"
# create an instance of CaptionList from a JSON string
caption_list_instance = CaptionList.from_json(json)
# print the JSON string representation of the object
print CaptionList.to_json()

# convert the object into a dict
caption_list_dict = caption_list_instance.to_dict()
# create an instance of CaptionList from a dict
caption_list_form_dict = caption_list.from_dict(caption_list_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
