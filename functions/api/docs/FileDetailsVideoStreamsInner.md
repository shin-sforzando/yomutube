# FileDetailsVideoStreamsInner

## Properties

| Name               | Type      | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             | Notes      |
| ------------------ | --------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **width_pixels**   | **int**   | The encoded video content&#39;s width in pixels. You can calculate the video&#39;s encoding aspect ratio as &#x60;width_pixels&#x60; / &#x60;height_pixels&#x60;.                                                                                                                                                                                                                                                                                                                                                                       | [optional] |
| **height_pixels**  | **int**   | The encoded video content&#39;s height in pixels.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       | [optional] |
| **frame_rate_fps** | **float** | The video stream&#39;s frame rate, in frames per second.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | [optional] |
| **aspect_ratio**   | **float** | The video content&#39;s display aspect ratio, which specifies the aspect ratio in which the video should be displayed.                                                                                                                                                                                                                                                                                                                                                                                                                  | [optional] |
| **codec**          | **str**   | The video codec that the stream uses.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   | [optional] |
| **bitrate_bps**    | **int**   | The video stream&#39;s bitrate, in bits per second.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     | [optional] |
| **rotation**       | **str**   | The amount that YouTube needs to rotate the original source content to properly display the video. Valid values for this property are: - &#x60;none&#x60; - The video does not need to be rotated. - &#x60;clockwise&#x60; - The video needs to be rotated 90 degrees clockwise. - &#x60;counterClockwise&#x60; - The video needs to be rotated 90 degrees counter-clockwise. - &#x60;other&#x60; - The video needs to be rotated in some other, non-trivial way. - &#x60;upsideDown&#x60; - The video needs to be rotated upside down. | [optional] |
| **vendor**         | **str**   | A value that uniquely identifies a video vendor. Typically, the value is a four-letter vendor code.                                                                                                                                                                                                                                                                                                                                                                                                                                     | [optional] |

## Example

```python
from youtube_data_v3.models.file_details_video_streams_inner import FileDetailsVideoStreamsInner

# TODO update the JSON string below
json = "{}"
# create an instance of FileDetailsVideoStreamsInner from a JSON string
file_details_video_streams_inner_instance = FileDetailsVideoStreamsInner.from_json(json)
# print the JSON string representation of the object
print FileDetailsVideoStreamsInner.to_json()

# convert the object into a dict
file_details_video_streams_inner_dict = file_details_video_streams_inner_instance.to_dict()
# create an instance of FileDetailsVideoStreamsInner from a dict
file_details_video_streams_inner_form_dict = file_details_video_streams_inner.from_dict(file_details_video_streams_inner_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
