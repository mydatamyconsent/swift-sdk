# DataProcessingAgreementsAPI

All URIs are relative to *https://api.mydatamyconsent.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDataProcessingAgreement**](DataProcessingAgreementsAPI.md#createdataprocessingagreement) | **POST** /v1/data-agreements | Create a data processing agreement.
[**deleteDataProcessingAgreementById**](DataProcessingAgreementsAPI.md#deletedataprocessingagreementbyid) | **DELETE** /v1/data-agreements/{id} | Delete a data processing agreement. This will not delete a published or a agreement in use with consents.
[**getDataProcessingAgreementById**](DataProcessingAgreementsAPI.md#getdataprocessingagreementbyid) | **GET** /v1/data-agreements/{id} | Get data processing agreement by id.
[**getDataProcessingAgreements**](DataProcessingAgreementsAPI.md#getdataprocessingagreements) | **GET** /v1/data-agreements | Get all data processing agreements.
[**terminateDataProcessingAgreementById**](DataProcessingAgreementsAPI.md#terminatedataprocessingagreementbyid) | **PUT** /v1/data-agreements/{id}/terminate | Terminate a data processing agreement.
[**updateDataProcessingAgreement**](DataProcessingAgreementsAPI.md#updatedataprocessingagreement) | **PUT** /v1/data-agreements/{id} | Update a data processing agreement.


# **createDataProcessingAgreement**
```swift
    open class func createDataProcessingAgreement(createDataProcessingAgreementRequestModel: CreateDataProcessingAgreementRequestModel? = nil, completion: @escaping (_ data: DataProcessingAgreementDto?, _ error: Error?) -> Void)
```

Create a data processing agreement.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let createDataProcessingAgreementRequestModel = CreateDataProcessingAgreementRequestModel(version: "version_example", body: "body_example", attachmentUrl: "attachmentUrl_example") // CreateDataProcessingAgreementRequestModel | Create data processing agreement MyDataMyConsent.Models.DataProcessingAgreements.CreateDataProcessingAgreementRequestModel. (optional)

// Create a data processing agreement.
DataProcessingAgreementsAPI.createDataProcessingAgreement(createDataProcessingAgreementRequestModel: createDataProcessingAgreementRequestModel) { (response, error) in
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
 **createDataProcessingAgreementRequestModel** | [**CreateDataProcessingAgreementRequestModel**](CreateDataProcessingAgreementRequestModel.md) | Create data processing agreement MyDataMyConsent.Models.DataProcessingAgreements.CreateDataProcessingAgreementRequestModel. | [optional] 

### Return type

[**DataProcessingAgreementDto**](DataProcessingAgreementDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDataProcessingAgreementById**
```swift
    open class func deleteDataProcessingAgreementById(id: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a data processing agreement. This will not delete a published or a agreement in use with consents.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let id = 987 // UUID | Agreement id.

// Delete a data processing agreement. This will not delete a published or a agreement in use with consents.
DataProcessingAgreementsAPI.deleteDataProcessingAgreementById(id: id) { (response, error) in
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
 **id** | **UUID** | Agreement id. | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDataProcessingAgreementById**
```swift
    open class func getDataProcessingAgreementById(id: UUID, completion: @escaping (_ data: DataProcessingAgreementDto?, _ error: Error?) -> Void)
```

Get data processing agreement by id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let id = 987 // UUID | Agreement id.

// Get data processing agreement by id.
DataProcessingAgreementsAPI.getDataProcessingAgreementById(id: id) { (response, error) in
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
 **id** | **UUID** | Agreement id. | 

### Return type

[**DataProcessingAgreementDto**](DataProcessingAgreementDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDataProcessingAgreements**
```swift
    open class func getDataProcessingAgreements(pageNo: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: DataProcessingAgreementDtoPaginatedList?, _ error: Error?) -> Void)
```

Get all data processing agreements.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let pageNo = 987 // Int | Page number. (optional) (default to 1)
let pageSize = 987 // Int | Number of items to return. (optional) (default to 25)

// Get all data processing agreements.
DataProcessingAgreementsAPI.getDataProcessingAgreements(pageNo: pageNo, pageSize: pageSize) { (response, error) in
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

# **terminateDataProcessingAgreementById**
```swift
    open class func terminateDataProcessingAgreementById(id: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Terminate a data processing agreement.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let id = 987 // UUID | Agreement id.

// Terminate a data processing agreement.
DataProcessingAgreementsAPI.terminateDataProcessingAgreementById(id: id) { (response, error) in
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
 **id** | **UUID** | Agreement id. | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDataProcessingAgreement**
```swift
    open class func updateDataProcessingAgreement(id: UUID, updateDataProcessingAgreementRequestModel: UpdateDataProcessingAgreementRequestModel? = nil, completion: @escaping (_ data: DataProcessingAgreementDto?, _ error: Error?) -> Void)
```

Update a data processing agreement.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let id = 987 // UUID | Agreement id.
let updateDataProcessingAgreementRequestModel = UpdateDataProcessingAgreementRequestModel(version: "version_example", body: "body_example", attachmentUrl: "attachmentUrl_example") // UpdateDataProcessingAgreementRequestModel | Updated data processing agreement MyDataMyConsent.Models.DataProcessingAgreements.UpdateDataProcessingAgreementRequestModel. (optional)

// Update a data processing agreement.
DataProcessingAgreementsAPI.updateDataProcessingAgreement(id: id, updateDataProcessingAgreementRequestModel: updateDataProcessingAgreementRequestModel) { (response, error) in
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
 **id** | **UUID** | Agreement id. | 
 **updateDataProcessingAgreementRequestModel** | [**UpdateDataProcessingAgreementRequestModel**](UpdateDataProcessingAgreementRequestModel.md) | Updated data processing agreement MyDataMyConsent.Models.DataProcessingAgreements.UpdateDataProcessingAgreementRequestModel. | [optional] 

### Return type

[**DataProcessingAgreementDto**](DataProcessingAgreementDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

