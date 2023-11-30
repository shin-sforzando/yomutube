# Video

A video resource represents a YouTube video. See. [Videos](https://developers.google.com/youtube/v3/docs/videos#resource)

## Properties

| Name                       | Type                                                | Description                                                                          | Notes      |
| -------------------------- | --------------------------------------------------- | ------------------------------------------------------------------------------------ | ---------- |
| **kind**                   | **str**                                             | Identifies the API resource&#39;s type. The value will be &#x60;youtube#video&#x60;. | [optional] |
| **etag**                   | **str**                                             | The Etag of this resource.                                                           | [optional] |
| **id**                     | **str**                                             | The ID that YouTube uses to uniquely identify the video.                             | [optional] |
| **snippet**                | [**Snippet**](Snippet.md)                           |                                                                                      | [optional] |
| **content_details**        | [**ContentDetails**](ContentDetails.md)             |                                                                                      | [optional] |
| **status**                 | [**Status**](Status.md)                             |                                                                                      | [optional] |
| **statistics**             | [**Statistics**](Statistics.md)                     |                                                                                      | [optional] |
| **player**                 | [**Player**](Player.md)                             |                                                                                      | [optional] |
| **topic_details**          | [**TopicDetails**](TopicDetails.md)                 |                                                                                      | [optional] |
| **recording_details**      | [**RecordingDetails**](RecordingDetails.md)         |                                                                                      | [optional] |
| **file_details**           | [**FileDetails**](FileDetails.md)                   |                                                                                      | [optional] |
| **processing_details**     | [**ProcessingDetails**](ProcessingDetails.md)       |                                                                                      | [optional] |
| **suggestions**            | [**Suggestions**](Suggestions.md)                   |                                                                                      | [optional] |
| **live_streaming_details** | [**LiveStreamingDetails**](LiveStreamingDetails.md) |                                                                                      | [optional] |
| **localizations**          | **Dict[str, Dict[str, LocalizationValue]]**         |                                                                                      | [optional] |

## Example

```python
from youtube_data_v3.models.video import Video

# TODO update the JSON string below
json = "{}"
# create an instance of Video from a JSON string
video_instance = Video.from_json(json)
# print the JSON string representation of the object
print Video.to_json()

# convert the object into a dict
video_dict = video_instance.to_dict()
# create an instance of Video from a dict
video_form_dict = video.from_dict(video_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
