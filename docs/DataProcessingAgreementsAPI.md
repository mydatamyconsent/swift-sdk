# DataProcessingAgreementsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1DataAgreementsGet**](DataProcessingAgreementsAPI.md#v1dataagreementsget) | **GET** /v1/data-agreements | Get all data processing agreements.
[**v1DataAgreementsIdDelete**](DataProcessingAgreementsAPI.md#v1dataagreementsiddelete) | **DELETE** /v1/data-agreements/{id} | Delete a data processing agreement. This will not delete a published or a agreement in use with consents.
[**v1DataAgreementsIdGet**](DataProcessingAgreementsAPI.md#v1dataagreementsidget) | **GET** /v1/data-agreements/{id} | Get data processing agreement by Id.
[**v1DataAgreementsIdPut**](DataProcessingAgreementsAPI.md#v1dataagreementsidput) | **PUT** /v1/data-agreements/{id} | Update a data processing agreement.
[**v1DataAgreementsIdTerminatePut**](DataProcessingAgreementsAPI.md#v1dataagreementsidterminateput) | **PUT** /v1/data-agreements/{id}/terminate | Terminate a data processing agreement.
[**v1DataAgreementsPost**](DataProcessingAgreementsAPI.md#v1dataagreementspost) | **POST** /v1/data-agreements | Create a data processing agreement.


# **v1DataAgreementsGet**
```swift
    open class func v1DataAgreementsGet(pageNo: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: DataProcessingAgreementDtoPaginatedList?, _ error: Error?) -> Void)
```

Get all data processing agreements.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let pageNo = 987 // Int | Page number. (optional) (default to 1)
let pageSize = 987 // Int | Number of items to return. (optional) (default to 25)

// Get all data processing agreements.
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
 **pageNo** | **Int** | Page number. | [optional] [default to 1]
 **pageSize** | **Int** | Number of items to return. | [optional] [default to 25]

### Return type

[**DataProcessingAgreementDtoPaginatedList**](DataProcessingAgreementDtoPaginatedList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1DataAgreementsIdDelete**
```swift
    open class func v1DataAgreementsIdDelete(id: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a data processing agreement. This will not delete a published or a agreement in use with consents.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let id = 987 // UUID | 

// Delete a data processing agreement. This will not delete a published or a agreement in use with consents.
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
 **id** | [**UUID**](.md) |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1DataAgreementsIdGet**
```swift
    open class func v1DataAgreementsIdGet(id: UUID, completion: @escaping (_ data: DataProcessingAgreementDto?, _ error: Error?) -> Void)
```

Get data processing agreement by Id.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let id = 987 // UUID | 

// Get data processing agreement by Id.
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
 **id** | [**UUID**](.md) |  | 

### Return type

[**DataProcessingAgreementDto**](DataProcessingAgreementDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1DataAgreementsIdPut**
```swift
    open class func v1DataAgreementsIdPut(id: UUID, updateDataProcessingAgreementRequestModel: UpdateDataProcessingAgreementRequestModel? = nil, completion: @escaping (_ data: DataProcessingAgreementDto?, _ error: Error?) -> Void)
```

Update a data processing agreement.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let id = 987 // UUID | 
let updateDataProcessingAgreementRequestModel = UpdateDataProcessingAgreementRequestModel(version: "version_example", body: "body_example", attachmentUrl: "attachmentUrl_example") // UpdateDataProcessingAgreementRequestModel |  (optional)

// Update a data processing agreement.
DataProcessingAgreementsAPI.v1DataAgreementsIdPut(id: id, updateDataProcessingAgreementRequestModel: updateDataProcessingAgreementRequestModel) { (response, error) in
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
 **id** | [**UUID**](.md) |  | 
 **updateDataProcessingAgreementRequestModel** | [**UpdateDataProcessingAgreementRequestModel**](UpdateDataProcessingAgreementRequestModel.md) |  | [optional] 

### Return type

[**DataProcessingAgreementDto**](DataProcessingAgreementDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1DataAgreementsIdTerminatePut**
```swift
    open class func v1DataAgreementsIdTerminatePut(id: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Terminate a data processing agreement.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let id = 987 // UUID | 

// Terminate a data processing agreement.
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
 **id** | [**UUID**](.md) |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1DataAgreementsPost**
```swift
    open class func v1DataAgreementsPost(createDataProcessingAgreementRequestModel: CreateDataProcessingAgreementRequestModel? = nil, completion: @escaping (_ data: DataProcessingAgreementDto?, _ error: Error?) -> Void)
```

Create a data processing agreement.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let createDataProcessingAgreementRequestModel = CreateDataProcessingAgreementRequestModel(version: "version_example", body: "body_example", attachmentUrl: "attachmentUrl_example") // CreateDataProcessingAgreementRequestModel |  (optional)

// Create a data processing agreement.
DataProcessingAgreementsAPI.v1DataAgreementsPost(createDataProcessingAgreementRequestModel: createDataProcessingAgreementRequestModel) { (response, error) in
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
 **createDataProcessingAgreementRequestModel** | [**CreateDataProcessingAgreementRequestModel**](CreateDataProcessingAgreementRequestModel.md) |  | [optional] 

### Return type

[**DataProcessingAgreementDto**](DataProcessingAgreementDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

