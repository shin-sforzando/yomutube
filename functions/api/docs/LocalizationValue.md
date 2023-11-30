# LocalizationValue

The language of the localized text associated with the key value. The value is a string that contains a BCP-47 language code.

## Properties

| Name            | Type    | Description                      | Notes      |
| --------------- | ------- | -------------------------------- | ---------- |
| **title**       | **str** | The localized video title.       | [optional] |
| **description** | **str** | The localized video description. | [optional] |

## Example

```python
from youtube_data_v3.models.localization_value import LocalizationValue

# TODO update the JSON string below
json = "{}"
# create an instance of LocalizationValue from a JSON string
localization_value_instance = LocalizationValue.from_json(json)
# print the JSON string representation of the object
print LocalizationValue.to_json()

# convert the object into a dict
localization_value_dict = localization_value_instance.to_dict()
# create an instance of LocalizationValue from a dict
localization_value_form_dict = localization_value.from_dict(localization_value_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
