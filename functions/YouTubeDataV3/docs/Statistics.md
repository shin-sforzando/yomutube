# Statistics

The statistics object contains statistics about the video.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**view_count** | **int** | The view count of the video. | [optional]
**like_count** | **int** | The like count of the video. | [optional]
**dislike_count** | **int** | The dislike count of the video. The &#x60;statistics.dislikeCount&#x60; property was made private as of December 13, 2021. This means that the property is included in an API response only if the API request was authenticated by the video owner. See the [revision history](https://developers.google.com/youtube/v3/revision_history#release_notes_12_15_2021) for more information. | [optional]
**favorite_count** | **int** | The favorite count of the video. This property has been deprecated. The deprecation is effective as of August 28, 2015. The property&#39;s value is now always set to &#x60;0&#x60;. | [optional]
**comment_count** | **int** | The comment count of the video. | [optional]

## Example

```python
from openapi_client.models.statistics import Statistics

# TODO update the JSON string below
json = "{}"
# create an instance of Statistics from a JSON string
statistics_instance = Statistics.from_json(json)
# print the JSON string representation of the object
print Statistics.to_json()

# convert the object into a dict
statistics_dict = statistics_instance.to_dict()
# create an instance of Statistics from a dict
statistics_form_dict = statistics.from_dict(statistics_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
