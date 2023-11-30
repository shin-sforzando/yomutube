# FileDetailsAudioStreamsInner

## Properties

| Name              | Type    | Description                                                                                         | Notes      |
| ----------------- | ------- | --------------------------------------------------------------------------------------------------- | ---------- |
| **channel_count** | **int** | TThe number of audio channels that the stream contains.                                             | [optional] |
| **codec**         | **str** | The codec of the audio stream.                                                                      | [optional] |
| **bitrate_bps**   | **int** | The bitrate of the audio stream in bits per second.                                                 | [optional] |
| **vendor**        | **str** | A value that uniquely identifies a video vendor. Typically, the value is a four-letter vendor code. | [optional] |

## Example

```python
from youtube_data_v3.models.file_details_audio_streams_inner import FileDetailsAudioStreamsInner

# TODO update the JSON string below
json = "{}"
# create an instance of FileDetailsAudioStreamsInner from a JSON string
file_details_audio_streams_inner_instance = FileDetailsAudioStreamsInner.from_json(json)
# print the JSON string representation of the object
print FileDetailsAudioStreamsInner.to_json()

# convert the object into a dict
file_details_audio_streams_inner_dict = file_details_audio_streams_inner_instance.to_dict()
# create an instance of FileDetailsAudioStreamsInner from a dict
file_details_audio_streams_inner_form_dict = file_details_audio_streams_inner.from_dict(file_details_audio_streams_inner_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
