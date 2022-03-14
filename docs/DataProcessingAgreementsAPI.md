# DataProcessingAgreementsAPI

All URIs are relative to *https://api.mydatamyconsent.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDataProcessingAgreement**](DataProcessingAgreementsAPI.md#createdataprocessingagreement) | **POST** /v1/data-agreements | Create a data processing agreement.
[**deleteDataProcessingAgreementById**](DataProcessingAgreementsAPI.md#deletedataprocessingagreementbyid) | **DELETE** /v1/data-agreements/{id} | Delete a data processing agreement. This will not delete a published or a agreement in use with consents.
[**getDataProcessingAgreementById**](DataProcessingAgreementsAPI.md#getdataprocessingagreementbyid) | **GET** /v1/data-agreements/{id} | Get data processing agreement by id.
[**getDataProcessingAgreements**](DataProcessingAgreementsAPI.md#getdataprocessingagreements) | **GET** /v1/data-agreements | Get paginated data processing agreements.
[**terminateDataProcessingAgreementById**](DataProcessingAgreementsAPI.md#terminatedataprocessingagreementbyid) | **PUT** /v1/data-agreements/{id}/terminate | Terminate a data processing agreement.
[**updateDataProcessingAgreement**](DataProcessingAgreementsAPI.md#updatedataprocessingagreement) | **PUT** /v1/data-agreements/{id} | Update a data processing agreement.


# **createDataProcessingAgreement**
```swift
    open class func createDataProcessingAgreement(createDataProcessingAgreement: CreateDataProcessingAgreement, completion: @escaping (_ data: DataProcessingAgreement?, _ error: Error?) -> Void)
```

Create a data processing agreement.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let createDataProcessingAgreement = CreateDataProcessingAgreement(version: "version_example", body: "body_example", attachmentUrl: "attachmentUrl_example") // CreateDataProcessingAgreement | Create data processing agreement payload

// Create a data processing agreement.
DataProcessingAgreementsAPI.createDataProcessingAgreement(createDataProcessingAgreement: createDataProcessingAgreement) { (response, error) in
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
 **createDataProcessingAgreement** | [**CreateDataProcessingAgreement**](CreateDataProcessingAgreement.md) | Create data processing agreement payload | 

### Return type

[**DataProcessingAgreement**](DataProcessingAgreement.md)

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
    open class func getDataProcessingAgreementById(id: UUID, completion: @escaping (_ data: DataProcessingAgreement?, _ error: Error?) -> Void)
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

[**DataProcessingAgreement**](DataProcessingAgreement.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDataProcessingAgreements**
```swift
    open class func getDataProcessingAgreements(pageNo: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: DataProcessingAgreementPaginatedList?, _ error: Error?) -> Void)
```

Get paginated data processing agreements.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let pageNo = 987 // Int | Page number. (optional) (default to 1)
let pageSize = 987 // Int | Number of items to return. (optional) (default to 25)

// Get paginated data processing agreements.
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

[**DataProcessingAgreementPaginatedList**](DataProcessingAgreementPaginatedList.md)

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
    open class func updateDataProcessingAgreement(id: UUID, updateDataProcessingAgreement: UpdateDataProcessingAgreement, completion: @escaping (_ data: DataProcessingAgreement?, _ error: Error?) -> Void)
```

Update a data processing agreement.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let id = 987 // UUID | Agreement id.
let updateDataProcessingAgreement = UpdateDataProcessingAgreement(version: "version_example", body: "body_example", attachmentUrl: "attachmentUrl_example") // UpdateDataProcessingAgreement | Update data processing agreement payload

// Update a data processing agreement.
DataProcessingAgreementsAPI.updateDataProcessingAgreement(id: id, updateDataProcessingAgreement: updateDataProcessingAgreement) { (response, error) in
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
 **updateDataProcessingAgreement** | [**UpdateDataProcessingAgreement**](UpdateDataProcessingAgreement.md) | Update data processing agreement payload | 

### Return type

[**DataProcessingAgreement**](DataProcessingAgreement.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

