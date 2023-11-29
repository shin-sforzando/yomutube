# Player

The player object contains information that you would use to play the video in an embedded player.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**embed_html** | **str** | An &#x60;&lt;iframe&gt;&#x60; tag that embeds a player that plays the video. If the API request to retrieve the resource specifies a value for the maxHeight and/or maxWidth parameters, the size of the embedded player is scaled to satisfy the maxHeight and/or maxWidth requirements. If the video&#39;s aspect ratio is unknown, the embedded player defaults to a 4:3 format. | [optional]
**embed_height** | **int** | The height of the embedded player returned in the &#x60;player.embedHtml&#x60; property. This property is only returned if the request specified a value for the maxHeight and/or maxWidth parameters and the video&#39;s aspect ratio is known. | [optional]
**embed_width** | **int** | The width of the embedded player returned in the &#x60;player.embedHtml&#x60; property. This property is only returned if the request specified a value for the maxHeight and/or maxWidth parameters and the video&#39;s aspect ratio is known. | [optional]

## Example

```python
from openapi_client.models.player import Player

# TODO update the JSON string below
json = "{}"
# create an instance of Player from a JSON string
player_instance = Player.from_json(json)
# print the JSON string representation of the object
print Player.to_json()

# convert the object into a dict
player_dict = player_instance.to_dict()
# create an instance of Player from a dict
player_form_dict = player.from_dict(player_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
