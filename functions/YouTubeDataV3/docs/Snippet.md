# Snippet

The snippet object contains basic details about the video, such as its title, description, and category.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**published_at** | **datetime** | The date and time that the video was published. Note that this time might be different than the time that the video was uploaded. For example, if a video is uploaded as a private video and then made public at a later time, this property will specify the time that the video was made public. There are a couple of special cases: - If a video is uploaded as a private video and the video metadata is retrieved by the channel owner, then the property value specifies the date and time that the video was uploaded. - If a video is uploaded as an unlisted video, the property value also specifies the date and time that the video was uploaded. In this case, anyone who knows the video&#39;s unique video ID can retrieve the video metadata. The value is specified in ISO 8601 format. | [optional]
**channel_id** | **str** | The ID that YouTube uses to uniquely identify the channel that the video was uploaded to. | [optional]
**title** | **str** | The video&#39;s title. The property value has a maximum length of 100 characters and may contain all valid UTF-8 characters except &lt; and &gt;. You must set a value for this property if you call the videos.update method and are updating the snippet part of a video resource. | [optional]
**description** | **str** | The video&#39;s description. The property value has a maximum length of 5000 bytes and may contain all valid UTF-8 characters except &lt; and &gt;. | [optional]
**thumbnails** | [**Dict[str, Thumbnail]**](Thumbnail.md) |  | [optional]
**channel_title** | **str** | The title of the channel that the video belongs to. | [optional]
**tags** | **List[str]** |  | [optional]
**category_id** | **str** | The YouTube video category associated with the video. You must set a value for this property if you call the &#x60;videos.update&#x60; method and are updating the snippet part of a video resource. | [optional]
**live_broadcast_content** | **str** | Indicates if the video is an upcoming/active live broadcast. Or it&#39;s \&quot;none\&quot; if the video is not an upcoming/active live broadcast. Valid values for this property are: - &#x60;live&#x60; - &#x60;none&#x60; - &#x60;upcoming&#x60; | [optional]
**default_language** | **str** | The language of the text in the video resource&#39;s &#x60;snippet.title&#x60; and &#x60;snippet.description&#x60; properties. | [optional]
**localized** | [**Localized**](Localized.md) |  | [optional]
**default_audio_language** | **str** | The &#x60;default_audio_language&#x60; property specifies the language spoken in the video&#39;s default audio track. | [optional]

## Example

```python
from openapi_client.models.snippet import Snippet

# TODO update the JSON string below
json = "{}"
# create an instance of Snippet from a JSON string
snippet_instance = Snippet.from_json(json)
# print the JSON string representation of the object
print Snippet.to_json()

# convert the object into a dict
snippet_dict = snippet_instance.to_dict()
# create an instance of Snippet from a dict
snippet_form_dict = snippet.from_dict(snippet_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
