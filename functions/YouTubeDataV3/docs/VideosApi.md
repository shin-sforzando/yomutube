# openapi_client.VideosApi

All URIs are relative to *https://www.googleapis.com/youtube/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**video_categories_list**](VideosApi.md#video_categories_list) | **GET** /videoCategories | Returns a list of categories that can be associated with YouTube videos.
[**videos_list**](VideosApi.md#videos_list) | **GET** /videos | Returns a list of videos that match the API request parameters.


# **video_categories_list**
> VideoCategoryList video_categories_list(part, id=id, region_code=region_code, hl=hl)

Returns a list of categories that can be associated with YouTube videos.

Quota impact: A call to this method has a quota cost of **1** unit. See. [VideoCategories:list](https://developers.google.com/youtube/v3/docs/videoCategories/list)

### Example

* Api Key Authentication (ApiKey):
```python
import time
import os
import openapi_client
from openapi_client.models.video_category_list import VideoCategoryList
from openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://www.googleapis.com/youtube/v3
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://www.googleapis.com/youtube/v3"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKey
configuration.api_key['ApiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.VideosApi(api_client)
    part = 'part_example' # str | The part parameter specifies the `videoCategory` resource properties that the API response will include. Set the parameter value to `snippet`.
    id = 'id_example' # str | The id parameter specifies a comma-separated list of video category IDs for the resources that you are retrieving. (optional)
    region_code = 'JP' # str | The regionCode parameter instructs the API to return the list of video categories available in the specified country. The parameter value is an ISO 3166-1 alpha-2 country code. (optional)
    hl = 'ja_JP' # str | The hl parameter specifies the language that should be used for text values in the API response. The default value is `en_US`. (optional)

    try:
        # Returns a list of categories that can be associated with YouTube videos.
        api_response = api_instance.video_categories_list(part, id=id, region_code=region_code, hl=hl)
        print("The response of VideosApi->video_categories_list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling VideosApi->video_categories_list: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **part** | **str**| The part parameter specifies the &#x60;videoCategory&#x60; resource properties that the API response will include. Set the parameter value to &#x60;snippet&#x60;. |
 **id** | **str**| The id parameter specifies a comma-separated list of video category IDs for the resources that you are retrieving. | [optional]
 **region_code** | **str**| The regionCode parameter instructs the API to return the list of video categories available in the specified country. The parameter value is an ISO 3166-1 alpha-2 country code. | [optional]
 **hl** | **str**| The hl parameter specifies the language that should be used for text values in the API response. The default value is &#x60;en_US&#x60;. | [optional]

### Return type

[**VideoCategoryList**](VideoCategoryList.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**404** | &#x60;videoCategoryNotFound&#x60; - The video category identified by the &#x60;id&#x60; parameter cannot be found. Use the &#x60;videoCategories.list&#x60; method to retrieve a list of valid values. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **videos_list**
> VideoList videos_list(part, chart=chart, id=id, hl=hl, max_height=max_height, max_results=max_results, max_width=max_width, page_token=page_token, region_code=region_code, video_category_id=video_category_id)

Returns a list of videos that match the API request parameters.

Quota impact: A call to this method has a quota cost of **1** unit. See. [Videos:list](https://developers.google.com/youtube/v3/docs/videos/list)

### Example

* Api Key Authentication (ApiKey):
```python
import time
import os
import openapi_client
from openapi_client.models.video_list import VideoList
from openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://www.googleapis.com/youtube/v3
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://www.googleapis.com/youtube/v3"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKey
configuration.api_key['ApiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.VideosApi(api_client)
    part = ['part_example'] # List[str] | he part parameter specifies a comma-separated list of one or more video resource properties that the API response will include. If the parameter identifies a property that contains child properties, the child properties will be included in the response. For example, in a video resource, the snippet property contains the channelId, title, description, tags, and categoryId properties. As such, if you set part=snippet, the API response will contain all of those properties. The following list contains the part names that you can include in the parameter value. - `contentDetails` - `fileDetails` - `id` - `liveStreamingDetails` - `localizations` - `player` - `processingDetails` - `recordingDetails` - `snippet` - `statistics` - `status` - `suggestions` - `topicDetails`
    chart = 'chart_example' # str | The chart parameter identifies the chart that you want to retrieve. Acceptable values are - `mostPopular` - Return the most popular videos for the specified content region and video category. (optional)
    id = 'id_example' # str | The id parameter specifies a comma-separated list of the YouTube video ID(s) for the resource(s) that are being retrieved. In a video resource, the id property specifies the video's ID. (optional)
    hl = 'hl_example' # str | The hl parameter instructs the API to retrieve localized resource metadata for a specific application language that the YouTube website supports. The parameter value must be a language code included in the list returned by the i18nLanguages.list method. If localized resource details are available in that language, the resource's snippet.localized object will contain the localized values. However, if localized details are not available, the snippet.localized object will contain resource details in the resource's default language. (optional)
    max_height = 1080 # int | The maxHeight parameter specifies the maximum height of the embedded player returned in the player.embedHtml property. You can use this parameter to specify that instead of the default dimensions, the embed code should use a height appropriate for your application layout. If the maxWidth parameter is also provided, the player may be shorter than the maxHeight in order to not violate the maximum width. Acceptable values are `72` to `8192`, inclusive. (optional)
    max_results = 5 # int | The maxResults parameter specifies the maximum number of items that should be returned in the result set. This parameter is supported for use in conjunction with the myRating parameter, but it is not supported for use in conjunction with the id parameter. Acceptable values are `1` to `50`, inclusive. The default value is **5**. (optional)
    max_width = 1920 # int | The maxWidth parameter specifies the maximum width of the embedded player returned in the player.embedHtml property. You can use this parameter to specify that instead of the default dimensions, the embed code should use a width appropriate for your application layout. If the maxHeight parameter is also provided, the player may be narrower than maxWidth in order to not violate the maximum height. Acceptable values are `72` to `8192`, inclusive. (optional)
    page_token = 'page_token_example' # str | The pageToken parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved. This parameter is supported for use in conjunction with the myRating parameter, but it is not supported for use in conjunction with the id parameter. (optional)
    region_code = 'JP' # str | The regionCode parameter instructs the API to select a video chart available in the specified region. This parameter can only be used in conjunction with the `chart` parameter. The parameter value is an ISO 3166-1 alpha-2 country code. (optional)
    video_category_id = '0' # str | The videoCategoryId parameter identifies the video category for which the chart should be retrieved. This parameter can only be used in conjunction with the chart parameter. By default, charts are not restricted to a particular category. The default value is **0**. (optional)

    try:
        # Returns a list of videos that match the API request parameters.
        api_response = api_instance.videos_list(part, chart=chart, id=id, hl=hl, max_height=max_height, max_results=max_results, max_width=max_width, page_token=page_token, region_code=region_code, video_category_id=video_category_id)
        print("The response of VideosApi->videos_list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling VideosApi->videos_list: %s\n" % e)
```



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **part** | [**List[str]**](str.md)| he part parameter specifies a comma-separated list of one or more video resource properties that the API response will include. If the parameter identifies a property that contains child properties, the child properties will be included in the response. For example, in a video resource, the snippet property contains the channelId, title, description, tags, and categoryId properties. As such, if you set part&#x3D;snippet, the API response will contain all of those properties. The following list contains the part names that you can include in the parameter value. - &#x60;contentDetails&#x60; - &#x60;fileDetails&#x60; - &#x60;id&#x60; - &#x60;liveStreamingDetails&#x60; - &#x60;localizations&#x60; - &#x60;player&#x60; - &#x60;processingDetails&#x60; - &#x60;recordingDetails&#x60; - &#x60;snippet&#x60; - &#x60;statistics&#x60; - &#x60;status&#x60; - &#x60;suggestions&#x60; - &#x60;topicDetails&#x60; |
 **chart** | **str**| The chart parameter identifies the chart that you want to retrieve. Acceptable values are - &#x60;mostPopular&#x60; - Return the most popular videos for the specified content region and video category. | [optional]
 **id** | **str**| The id parameter specifies a comma-separated list of the YouTube video ID(s) for the resource(s) that are being retrieved. In a video resource, the id property specifies the video&#39;s ID. | [optional]
 **hl** | **str**| The hl parameter instructs the API to retrieve localized resource metadata for a specific application language that the YouTube website supports. The parameter value must be a language code included in the list returned by the i18nLanguages.list method. If localized resource details are available in that language, the resource&#39;s snippet.localized object will contain the localized values. However, if localized details are not available, the snippet.localized object will contain resource details in the resource&#39;s default language. | [optional]
 **max_height** | **int**| The maxHeight parameter specifies the maximum height of the embedded player returned in the player.embedHtml property. You can use this parameter to specify that instead of the default dimensions, the embed code should use a height appropriate for your application layout. If the maxWidth parameter is also provided, the player may be shorter than the maxHeight in order to not violate the maximum width. Acceptable values are &#x60;72&#x60; to &#x60;8192&#x60;, inclusive. | [optional]
 **max_results** | **int**| The maxResults parameter specifies the maximum number of items that should be returned in the result set. This parameter is supported for use in conjunction with the myRating parameter, but it is not supported for use in conjunction with the id parameter. Acceptable values are &#x60;1&#x60; to &#x60;50&#x60;, inclusive. The default value is **5**. | [optional]
 **max_width** | **int**| The maxWidth parameter specifies the maximum width of the embedded player returned in the player.embedHtml property. You can use this parameter to specify that instead of the default dimensions, the embed code should use a width appropriate for your application layout. If the maxHeight parameter is also provided, the player may be narrower than maxWidth in order to not violate the maximum height. Acceptable values are &#x60;72&#x60; to &#x60;8192&#x60;, inclusive. | [optional]
 **page_token** | **str**| The pageToken parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved. This parameter is supported for use in conjunction with the myRating parameter, but it is not supported for use in conjunction with the id parameter. | [optional]
 **region_code** | **str**| The regionCode parameter instructs the API to select a video chart available in the specified region. This parameter can only be used in conjunction with the &#x60;chart&#x60; parameter. The parameter value is an ISO 3166-1 alpha-2 country code. | [optional]
 **video_category_id** | **str**| The videoCategoryId parameter identifies the video category for which the chart should be retrieved. This parameter can only be used in conjunction with the chart parameter. By default, charts are not restricted to a particular category. The default value is **0**. | [optional]

### Return type

[**VideoList**](VideoList.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | &#x60;videoChartNotFound&#x60; - The requested video chart is not supported or is not available. |  -  |
**403** | &#x60;forbidden&#x60; - The request is not properly authorized to access video file or processing information. Note that the &#x60;fileDetails&#x60;, &#x60;processingDetails&#x60;, and &#x60;suggestions&#x60; parts are only available to that video&#39;s owner. Or, the request cannot access user rating information. This error may occur because the request is not properly authorized to use the &#x60;myRating&#x60; parameter. |  -  |
**404** | &#x60;videoNotFound&#x60; - The video that you are trying to retrieve cannot be found. Check the value of the request&#39;s &#x60;id&#x60; parameter to ensure that it is correct. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
