# ContentDetailsRegionRestriction

The `regionRestriction` object contains information about the countries where a video is (or is not) viewable. The object will contain either the `contentDetails.regionRestriction.allowed` property or the `contentDetails.regionRestriction.blocked` property.

## Properties

| Name        | Type          | Description | Notes      |
| ----------- | ------------- | ----------- | ---------- |
| **allowed** | **List[str]** |             | [optional] |
| **blocked** | **List[str]** |             | [optional] |

## Example

```python
from youtube_data_v3.models.content_details_region_restriction import ContentDetailsRegionRestriction

# TODO update the JSON string below
json = "{}"
# create an instance of ContentDetailsRegionRestriction from a JSON string
content_details_region_restriction_instance = ContentDetailsRegionRestriction.from_json(json)
# print the JSON string representation of the object
print ContentDetailsRegionRestriction.to_json()

# convert the object into a dict
content_details_region_restriction_dict = content_details_region_restriction_instance.to_dict()
# create an instance of ContentDetailsRegionRestriction from a dict
content_details_region_restriction_form_dict = content_details_region_restriction.from_dict(content_details_region_restriction_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
