# VideoCategorySnippet

## Properties

| Name           | Type     | Description                                                                                                                                                                                          | Notes      |
| -------------- | -------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **channel_id** | **str**  | The YouTube channel that created the video category.                                                                                                                                                 | [optional] |
| **title**      | **str**  | The video category&#39;s title.                                                                                                                                                                      | [optional] |
| **assignable** | **bool** | Indicates whether videos can be associated with the category. If you set this value to &#x60;false&#x60;, then YouTube does not display the category in video metadata that it returns for searches. | [optional] |

## Example

```python
from youtube_data_v3.models.video_category_snippet import VideoCategorySnippet

# TODO update the JSON string below
json = "{}"
# create an instance of VideoCategorySnippet from a JSON string
video_category_snippet_instance = VideoCategorySnippet.from_json(json)
# print the JSON string representation of the object
print VideoCategorySnippet.to_json()

# convert the object into a dict
video_category_snippet_dict = video_category_snippet_instance.to_dict()
# create an instance of VideoCategorySnippet from a dict
video_category_snippet_form_dict = video_category_snippet.from_dict(video_category_snippet_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
