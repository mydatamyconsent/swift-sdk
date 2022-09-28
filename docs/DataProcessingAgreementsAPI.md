# DataProcessingAgreementsAPI

All URIs are relative to *https://api.mydatamyconsent.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1DataAgreementsGet**](DataProcessingAgreementsAPI.md#v1dataagreementsget) | **GET** /v1/data-agreements | Get paginated data processing agreements.
[**v1DataAgreementsIdDelete**](DataProcessingAgreementsAPI.md#v1dataagreementsiddelete) | **DELETE** /v1/data-agreements/{id} | Delete a data processing agreement this will not delete a published or a agreement in use with consents.
[**v1DataAgreementsIdGet**](DataProcessingAgreementsAPI.md#v1dataagreementsidget) | **GET** /v1/data-agreements/{id} | Get data processing agreement by id.
[**v1DataAgreementsIdPut**](DataProcessingAgreementsAPI.md#v1dataagreementsidput) | **PUT** /v1/data-agreements/{id} | Update data processing agreement.
[**v1DataAgreementsIdTerminatePut**](DataProcessingAgreementsAPI.md#v1dataagreementsidterminateput) | **PUT** /v1/data-agreements/{id}/terminate | Terminate a data processing agreement by id.
[**v1DataAgreementsPost**](DataProcessingAgreementsAPI.md#v1dataagreementspost) | **POST** /v1/data-agreements | Create a data processing agreement.


# **v1DataAgreementsGet**
```swift
    open class func v1DataAgreementsGet(pageNo: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: PaginatedListOfDataProcessingAgreements?, _ error: Error?) -> Void)
```

Get paginated data processing agreements.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let pageNo = 987 // Int |  (optional)
let pageSize = 987 // Int |  (optional)

// Get paginated data processing agreements.
DataProcessingAgreementsAPI.v1DataAgreementsGet(pageNo: pageNo, pageSize: pageSize) { (response, error) in
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
 **pageNo** | **Int** |  | [optional] 
 **pageSize** | **Int** |  | [optional] 

### Return type

[**PaginatedListOfDataProcessingAgreements**](PaginatedListOfDataProcessingAgreements.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1DataAgreementsIdDelete**
```swift
    open class func v1DataAgreementsIdDelete(id: String, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Delete a data processing agreement this will not delete a published or a agreement in use with consents.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let id = "id_example" // String | 

// Delete a data processing agreement this will not delete a published or a agreement in use with consents.
DataProcessingAgreementsAPI.v1DataAgreementsIdDelete(id: id) { (response, error) in
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

**Bool**

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1DataAgreementsIdGet**
```swift
    open class func v1DataAgreementsIdGet(id: String, completion: @escaping (_ data: DataProcessingAgreement?, _ error: Error?) -> Void)
```

Get data processing agreement by id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let id = "id_example" // String | 

// Get data processing agreement by id.
DataProcessingAgreementsAPI.v1DataAgreementsIdGet(id: id) { (response, error) in
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

[**DataProcessingAgreement**](DataProcessingAgreement.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1DataAgreementsIdPut**
```swift
    open class func v1DataAgreementsIdPut(id: String, updateDataProcessingAgreement: UpdateDataProcessingAgreement, completion: @escaping (_ data: DataProcessingAgreement?, _ error: Error?) -> Void)
```

Update data processing agreement.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let id = "id_example" // String | 
let updateDataProcessingAgreement = UpdateDataProcessingAgreement(version: "version_example", body: "body_example", attachmentUrl: "attachmentUrl_example") // UpdateDataProcessingAgreement | 

// Update data processing agreement.
DataProcessingAgreementsAPI.v1DataAgreementsIdPut(id: id, updateDataProcessingAgreement: updateDataProcessingAgreement) { (response, error) in
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
 **updateDataProcessingAgreement** | [**UpdateDataProcessingAgreement**](UpdateDataProcessingAgreement.md) |  | 

### Return type

[**DataProcessingAgreement**](DataProcessingAgreement.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1DataAgreementsIdTerminatePut**
```swift
    open class func v1DataAgreementsIdTerminatePut(id: String, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Terminate a data processing agreement by id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let id = "id_example" // String | 

// Terminate a data processing agreement by id.
DataProcessingAgreementsAPI.v1DataAgreementsIdTerminatePut(id: id) { (response, error) in
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

**Bool**

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1DataAgreementsPost**
```swift
    open class func v1DataAgreementsPost(createDataProcessingAgreement: CreateDataProcessingAgreement, completion: @escaping (_ data: DataProcessingAgreement?, _ error: Error?) -> Void)
```

Create a data processing agreement.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let createDataProcessingAgreement = CreateDataProcessingAgreement(version: "version_example", body: "body_example", attachmentUrl: "attachmentUrl_example") // CreateDataProcessingAgreement | 

// Create a data processing agreement.
DataProcessingAgreementsAPI.v1DataAgreementsPost(createDataProcessingAgreement: createDataProcessingAgreement) { (response, error) in
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
 **createDataProcessingAgreement** | [**CreateDataProcessingAgreement**](CreateDataProcessingAgreement.md) |  | 

### Return type

[**DataProcessingAgreement**](DataProcessingAgreement.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

