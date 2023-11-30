# VideoCategoryList

## Properties

| Name                | Type                                        | Description                                                                                                                     | Notes      |
| ------------------- | ------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **kind**            | **str**                                     | Identifies the API resource&#39;s type. The value will be &#x60;youtube#videoCategoryListResponse&#x60;.                        | [optional] |
| **etag**            | **str**                                     | The Etag of this resource.                                                                                                      | [optional] |
| **next_page_token** | **str**                                     | The token that can be used as the value of the &#x60;pageToken&#x60; parameter to retrieve the next page in the result set.     | [optional] |
| **prev_page_token** | **str**                                     | The token that can be used as the value of the &#x60;pageToken&#x60; parameter to retrieve the previous page in the result set. | [optional] |
| **page_info**       | [**PageInfo**](PageInfo.md)                 |                                                                                                                                 | [optional] |
| **items**           | [**List[VideoCategory]**](VideoCategory.md) |                                                                                                                                 | [optional] |

## Example

```python
from youtube_data_v3.models.video_category_list import VideoCategoryList

# TODO update the JSON string below
json = "{}"
# create an instance of VideoCategoryList from a JSON string
video_category_list_instance = VideoCategoryList.from_json(json)
# print the JSON string representation of the object
print VideoCategoryList.to_json()

# convert the object into a dict
video_category_list_dict = video_category_list_instance.to_dict()
# create an instance of VideoCategoryList from a dict
video_category_list_form_dict = video_category_list.from_dict(video_category_list_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
