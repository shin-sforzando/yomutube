# ProcessingDetailsProcessingProgress

The processingProgress object contains information about the progress YouTube has made in processing the video. The values are really only relevant if the video's processing status is processing.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**parts_total** | **int** | An estimate of the total number of parts that need to be processed for the video. The number may be updated with more precise estimates while YouTube processes the video. | [optional]
**parts_processed** | **int** | The number of parts of the video that YouTube has already processed. You can estimate the percentage of the video that YouTube has already processed by calculating: &#x60;100 * parts_processed / parts_total&#x60; Note that since the estimated number of parts could increase without a corresponding increase in the number of parts that have already been processed, it is possible that the calculated progress could periodically decrease while YouTube processes a video. | [optional]
**time_left_ms** | **int** | An estimate of the amount of time, in milliseconds, that YouTube needs to finish processing the video. | [optional]

## Example

```python
from openapi_client.models.processing_details_processing_progress import ProcessingDetailsProcessingProgress

# TODO update the JSON string below
json = "{}"
# create an instance of ProcessingDetailsProcessingProgress from a JSON string
processing_details_processing_progress_instance = ProcessingDetailsProcessingProgress.from_json(json)
# print the JSON string representation of the object
print ProcessingDetailsProcessingProgress.to_json()

# convert the object into a dict
processing_details_processing_progress_dict = processing_details_processing_progress_instance.to_dict()
# create an instance of ProcessingDetailsProcessingProgress from a dict
processing_details_processing_progress_form_dict = processing_details_processing_progress.from_dict(processing_details_processing_progress_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
