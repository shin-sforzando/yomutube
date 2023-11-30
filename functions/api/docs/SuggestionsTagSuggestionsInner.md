# SuggestionsTagSuggestionsInner

## Properties

| Name                   | Type          | Description                              | Notes      |
| ---------------------- | ------------- | ---------------------------------------- | ---------- |
| **tag**                | **str**       | The keyword tag suggested for the video. | [optional] |
| **category_restricts** | **List[str]** |                                          | [optional] |

## Example

```python
from youtube_data_v3.models.suggestions_tag_suggestions_inner import SuggestionsTagSuggestionsInner

# TODO update the JSON string below
json = "{}"
# create an instance of SuggestionsTagSuggestionsInner from a JSON string
suggestions_tag_suggestions_inner_instance = SuggestionsTagSuggestionsInner.from_json(json)
# print the JSON string representation of the object
print SuggestionsTagSuggestionsInner.to_json()

# convert the object into a dict
suggestions_tag_suggestions_inner_dict = suggestions_tag_suggestions_inner_instance.to_dict()
# create an instance of SuggestionsTagSuggestionsInner from a dict
suggestions_tag_suggestions_inner_form_dict = suggestions_tag_suggestions_inner.from_dict(suggestions_tag_suggestions_inner_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
