# VideoList

The response from the YouTube API that contains the list of videos.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**kind** | **str** | Identifies the API resource&#39;s type. The value will be &#x60;youtube#videoListResponse&#x60;. | [optional]
**etag** | **str** | The Etag of this resource. | [optional]
**next_page_token** | **str** | The token that can be used as the value of the &#x60;pageToken&#x60; parameter to retrieve the next page in the result set. | [optional]
**prev_page_token** | **str** | The token that can be used as the value of the &#x60;pageToken&#x60; parameter to retrieve the previous page in the result set. | [optional]
**page_info** | [**PageInfo**](PageInfo.md) |  | [optional]
**items** | [**List[Video]**](Video.md) |  | [optional]

## Example

```python
from openapi_client.models.video_list import VideoList

# TODO update the JSON string below
json = "{}"
# create an instance of VideoList from a JSON string
video_list_instance = VideoList.from_json(json)
# print the JSON string representation of the object
print VideoList.to_json()

# convert the object into a dict
video_list_dict = video_list_instance.to_dict()
# create an instance of VideoList from a dict
video_list_form_dict = video_list.from_dict(video_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
