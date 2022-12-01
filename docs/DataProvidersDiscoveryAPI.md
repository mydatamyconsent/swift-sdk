# DataProvidersDiscoveryAPI

All URIs are relative to *https://api.mydatamyconsent.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1DataProvidersGet**](DataProvidersDiscoveryAPI.md#v1dataprovidersget) | **GET** /v1/data-providers | Discover all data providers in my data my consent by country and filters.
[**v1DataProvidersIdGet**](DataProvidersDiscoveryAPI.md#v1dataprovidersidget) | **GET** /v1/data-providers/{id} | Get a data provider details by provider id.


# **v1DataProvidersGet**
```swift
    open class func v1DataProvidersGet(countryIso2Code: String, pageNo: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: PaginatedListOfDataProviders?, _ error: Error?) -> Void)
```

Discover all data providers in my data my consent by country and filters.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let countryIso2Code = "countryIso2Code_example" // String | 
let pageNo = 987 // Int |  (optional)
let pageSize = 987 // Int |  (optional)

// Discover all data providers in my data my consent by country and filters.
DataProvidersDiscoveryAPI.v1DataProvidersGet(countryIso2Code: countryIso2Code, pageNo: pageNo, pageSize: pageSize) { (response, error) in
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
 **countryIso2Code** | **String** |  | 
 **pageNo** | **Int** |  | [optional] 
 **pageSize** | **Int** |  | [optional] 

### Return type

[**PaginatedListOfDataProviders**](PaginatedListOfDataProviders.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1DataProvidersIdGet**
```swift
    open class func v1DataProvidersIdGet(id: String, completion: @escaping (_ data: DataProviderDetails?, _ error: Error?) -> Void)
```

Get a data provider details by provider id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let id = "id_example" // String | 

// Get a data provider details by provider id.
DataProvidersDiscoveryAPI.v1DataProvidersIdGet(id: id) { (response, error) in
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
 **id** | **String** |  | 

### Return type

[**DataProviderDetails**](DataProviderDetails.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

