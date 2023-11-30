# Caption

The caption resource represents a YouTube caption track. A caption track is associated with a single YouTube video. See. [Captions](https://developers.google.com/youtube/v3/docs/captions#resource)

## Properties

| Name        | Type                                    | Description                                                                            | Notes      |
| ----------- | --------------------------------------- | -------------------------------------------------------------------------------------- | ---------- |
| **kind**    | **str**                                 | Identifies the API resource&#39;s type. The value will be &#x60;youtube#caption&#x60;. | [optional] |
| **etag**    | **str**                                 | The Etag of this resource.                                                             | [optional] |
| **id**      | **str**                                 | The ID that YouTube uses to uniquely identify the caption track.                       | [optional] |
| **snippet** | [**CaptionSnippet**](CaptionSnippet.md) |                                                                                        | [optional] |

## Example

```python
from youtube_data_v3.models.caption import Caption

# TODO update the JSON string below
json = "{}"
# create an instance of Caption from a JSON string
caption_instance = Caption.from_json(json)
# print the JSON string representation of the object
print Caption.to_json()

# convert the object into a dict
caption_dict = caption_instance.to_dict()
# create an instance of Caption from a dict
caption_form_dict = caption.from_dict(caption_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
