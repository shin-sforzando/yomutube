# RecordingDetails

The recordingDetails object encapsulates information about the location, date and address where the video was recorded.

## Properties

| Name               | Type         | Description                                                                                                          | Notes      |
| ------------------ | ------------ | -------------------------------------------------------------------------------------------------------------------- | ---------- |
| **recording_date** | **datetime** | The date and time when the video was recorded. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sssZ) format. | [optional] |

## Example

```python
from youtube_data_v3.models.recording_details import RecordingDetails

# TODO update the JSON string below
json = "{}"
# create an instance of RecordingDetails from a JSON string
recording_details_instance = RecordingDetails.from_json(json)
# print the JSON string representation of the object
print RecordingDetails.to_json()

# convert the object into a dict
recording_details_dict = recording_details_instance.to_dict()
# create an instance of RecordingDetails from a dict
recording_details_form_dict = recording_details.from_dict(recording_details_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
