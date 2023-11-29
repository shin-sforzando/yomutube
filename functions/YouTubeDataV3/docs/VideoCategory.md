# VideoCategory

A videoCategory resource identifies a category that has been or could be associated with uploaded videos. See. [VideoCategories](https://developers.google.com/youtube/v3/docs/videoCategories#resource)

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**kind** | **str** | Identifies the API resource&#39;s type. The value will be &#x60;youtube#videoCategory&#x60;. | [optional]
**etag** | **str** | The Etag of this resource. | [optional]
**id** | **str** | The ID that YouTube uses to uniquely identify the video category. | [optional]
**snippet** | [**VideoCategorySnippet**](VideoCategorySnippet.md) |  | [optional]

## Example

```python
from openapi_client.models.video_category import VideoCategory

# TODO update the JSON string below
json = "{}"
# create an instance of VideoCategory from a JSON string
video_category_instance = VideoCategory.from_json(json)
# print the JSON string representation of the object
print VideoCategory.to_json()

# convert the object into a dict
video_category_dict = video_category_instance.to_dict()
# create an instance of VideoCategory from a dict
video_category_form_dict = video_category.from_dict(video_category_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
