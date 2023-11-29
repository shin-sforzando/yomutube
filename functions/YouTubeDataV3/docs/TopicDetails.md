# TopicDetails

The topicDetails object encapsulates information about topics associated with the video. Important: See the definitions of the `topicDetails.relevantTopicIds[]` and `topicDetails.topicIds[]` properties as well as the [revision history](https://developers.google.com/youtube/v3/revision_history#november-10-2016) for more details about upcoming changes related to topic IDs.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**topic_ids** | **List[str]** |  | [optional]
**relevant_topic_ids** | **List[str]** |  | [optional]
**topic_categories** | **List[str]** |  | [optional]

## Example

```python
from openapi_client.models.topic_details import TopicDetails

# TODO update the JSON string below
json = "{}"
# create an instance of TopicDetails from a JSON string
topic_details_instance = TopicDetails.from_json(json)
# print the JSON string representation of the object
print TopicDetails.to_json()

# convert the object into a dict
topic_details_dict = topic_details_instance.to_dict()
# create an instance of TopicDetails from a dict
topic_details_form_dict = topic_details.from_dict(topic_details_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
