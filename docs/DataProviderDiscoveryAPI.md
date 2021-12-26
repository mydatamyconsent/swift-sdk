# DataProviderDiscoveryAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1DataProvidersGet**](DataProviderDiscoveryAPI.md#v1dataprovidersget) | **GET** /v1/data-providers | Discover all data providers in My Data My Consent by country and filters.
[**v1DataProvidersProviderIdGet**](DataProviderDiscoveryAPI.md#v1dataprovidersprovideridget) | **GET** /v1/data-providers/{providerId} | Get a Data Provider details.


# **v1DataProvidersGet**
```swift
    open class func v1DataProvidersGet(accountType: String? = nil, documentType: String? = nil, organizationCategory: String? = nil, pageNo: Int? = nil, pageSize: Int? = nil, country: String? = nil, completion: @escaping (_ data: DataProviderPaginatedList?, _ error: Error?) -> Void)
```

Discover all data providers in My Data My Consent by country and filters.

.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let accountType = "accountType_example" // String | Account type. (optional)
let documentType = "documentType_example" // String | Document type. (optional)
let organizationCategory = "organizationCategory_example" // String | Organization category. (optional)
let pageNo = 987 // Int | Page number. (optional)
let pageSize = 987 // Int | Page size. (optional)
let country = "country_example" // String | ISO2 Country code. (optional) (default to "IN")

// Discover all data providers in My Data My Consent by country and filters.
DataProviderDiscoveryAPI.v1DataProvidersGet(accountType: accountType, documentType: documentType, organizationCategory: organizationCategory, pageNo: pageNo, pageSize: pageSize, country: country) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountType** | **String** | Account type. | [optional] 
 **documentType** | **String** | Document type. | [optional] 
 **organizationCategory** | **String** | Organization category. | [optional] 
 **pageNo** | **Int** | Page number. | [optional] 
 **pageSize** | **Int** | Page size. | [optional] 
 **country** | **String** | ISO2 Country code. | [optional] [default to &quot;IN&quot;]

### Return type

[**DataProviderPaginatedList**](DataProviderPaginatedList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1DataProvidersProviderIdGet**
```swift
    open class func v1DataProvidersProviderIdGet(providerId: String, completion: @escaping (_ data: DataProvider?, _ error: Error?) -> Void)
```

Get a Data Provider details.

.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let providerId = "providerId_example" // String | Provider Id.

// Get a Data Provider details.
DataProviderDiscoveryAPI.v1DataProvidersProviderIdGet(providerId: providerId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **providerId** | **String** | Provider Id. | 

### Return type

[**DataProvider**](DataProvider.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
