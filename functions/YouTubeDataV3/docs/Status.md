# Status

The status object contains information about the video's uploading, processing, and privacy statuses.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**upload_status** | **str** | The status of the uploaded video. | [optional]
**failure_reason** | **str** | This value explains why a video failed to upload. This property is only present if the &#x60;uploadStatus&#x60; property indicates that the upload failed. | [optional]
**rejection_reason** | **str** | This value explains why YouTube rejected an uploaded video. This property is only present if the &#x60;uploadStatus&#x60; property indicates that the upload was rejected. | [optional]
**privacy_status** | **str** | The video&#39;s privacy status. | [optional]
**publish_at** | **datetime** | The date and time when the video is scheduled to publish. It can be set only if the privacy status of the video is private. The value is specified in ISO 8601 format. Note the following two additional points about this property&#39;s behavior: - If you set this property&#39;s value when calling the videos.update method, you must also set the status.privacyStatus property value to private even if the video is already private. - If your request schedules a video to be published at some time in the past, the video will be published right away. As such, the effect of setting the status.publishAt property to a past date and time is the same as of changing the video&#39;s privacyStatus from private to public. | [optional]
**license** | **str** | The license of the video. | [optional]
**embeddable** | **bool** | This value indicates whether the video can be embedded on another website. | [optional]
**public_stats_viewable** | **bool** | This value indicates whether the extended video statistics on the video&#39;s watch page are publicly viewable. By default, those statistics are viewable, and statistics like a video&#39;s &#x60;viewCount&#x60; and ratings will still be publicly visible even if this property&#39;s value is set to &#x60;false&#x60;. | [optional]
**made_for_kids** | **bool** | This value indicates whether the video is designated as child-directed, and it contains the current \&quot;made for kids\&quot; status of the video. For example, the status might be determined based on the value of the &#x60;selfDeclaredMadeForKids&#x60; property. | [optional]
**self_declared_made_for_kids** | **bool** | In a &#x60;videos.insert&#x60; or &#x60;videos.update&#x60; request, this property allows the channel owner to designate the video as being child-directed. In a &#x60;videos.list&#x60; request, the property value is only returned if the channel owner authorized the API request. | [optional]

## Example

```python
from openapi_client.models.status import Status

# TODO update the JSON string below
json = "{}"
# create an instance of Status from a JSON string
status_instance = Status.from_json(json)
# print the JSON string representation of the object
print Status.to_json()

# convert the object into a dict
status_dict = status_instance.to_dict()
# create an instance of Status from a dict
status_form_dict = status.from_dict(status_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
