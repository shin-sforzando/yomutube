# PageInfo

The pageInfo object encapsulates paging information for the result set.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_results** | **int** | The total number of results in the result set. | [optional]
**results_per_page** | **int** | The number of results included in the API response. | [optional]

## Example

```python
from openapi_client.models.page_info import PageInfo

# TODO update the JSON string below
json = "{}"
# create an instance of PageInfo from a JSON string
page_info_instance = PageInfo.from_json(json)
# print the JSON string representation of the object
print PageInfo.to_json()

# convert the object into a dict
page_info_dict = page_info_instance.to_dict()
# create an instance of PageInfo from a dict
page_info_form_dict = page_info.from_dict(page_info_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
