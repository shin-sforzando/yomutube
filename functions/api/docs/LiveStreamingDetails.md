# LiveStreamingDetails

The liveStreamingDetails object contains metadata about a live video broadcast. The object will only be present in a `video` resource if the video is an upcoming, live, or completed live broadcast.

## Properties

| Name                     | Type         | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                      | Notes      |
| ------------------------ | ------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **actual_start_time**    | **datetime** | The time that the broadcast actually started. The value is specified in ISO 8601 format. This value will not be available until the broadcast begins.                                                                                                                                                                                                                                                                                                            | [optional] |
| **actual_end_time**      | **datetime** | The time that the broadcast actually ended. The value is specified in ISO 8601 format. This value will not be available until the broadcast is over.                                                                                                                                                                                                                                                                                                             | [optional] |
| **scheduled_start_time** | **datetime** | The time that the broadcast is scheduled to begin. The value is specified in ISO 8601 format.                                                                                                                                                                                                                                                                                                                                                                    | [optional] |
| **scheduled_end_time**   | **datetime** | The time that the broadcast is scheduled to end. The value is specified in ISO 8601 format. If the value is empty or the property is not present, then the broadcast is scheduled to continue indefinitely.                                                                                                                                                                                                                                                      | [optional] |
| **concurrent_viewers**   | **int**      | The number of viewers currently watching the broadcast. The property and its value will be present if the broadcast has current viewers and the broadcast owner has not hidden the &#x60;viewCount&#x60; for the video. Note that YouTube stops tracking the number of concurrent viewers for a broadcast when the broadcast ends. So, this property would not identify the number of viewers watching an archived video of a live broadcast that already ended. | [optional] |
| **active_live_chat_id**  | **str**      | The ID of the currently active live chat attached to this video. This field is filled only if the video is a currently live broadcast that has live chat. Once the broadcast transitions to complete this field will be removed and the live chat closed down. For persistent broadcasts that live chat id will no longer be tied to this video but rather to the new video being displayed at the persistent page.                                              | [optional] |

## Example

```python
from youtube_data_v3.models.live_streaming_details import LiveStreamingDetails

# TODO update the JSON string below
json = "{}"
# create an instance of LiveStreamingDetails from a JSON string
live_streaming_details_instance = LiveStreamingDetails.from_json(json)
# print the JSON string representation of the object
print LiveStreamingDetails.to_json()

# convert the object into a dict
live_streaming_details_dict = live_streaming_details_instance.to_dict()
# create an instance of LiveStreamingDetails from a dict
live_streaming_details_form_dict = live_streaming_details.from_dict(live_streaming_details_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
