# DataConsentRequestsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelConsentRequest**](DataConsentRequestsAPI.md#cancelconsentrequest) | **DELETE** /v1/consent-requests/{requestId}/cancel | Revoke / Cancel the ConsentRequest based on Id.
[**createRequest**](DataConsentRequestsAPI.md#createrequest) | **POST** /v1/consent-requests | Create a consent request.
[**getAllConsentRequestsToIndividuals**](DataConsentRequestsAPI.md#getallconsentrequeststoindividuals) | **GET** /v1/consent-requests/individuals | Get all Consent Requests sent to Individuals.
[**getAllConsentRequestsToOrganizations**](DataConsentRequestsAPI.md#getallconsentrequeststoorganizations) | **GET** /v1/consent-requests/organizations | Get All Consent Requests sent to Organizations
[**getIndividualConsentRequestById**](DataConsentRequestsAPI.md#getindividualconsentrequestbyid) | **GET** /v1/consent-requests/individuals/{requestId} | Get a Consent Request by ID.
[**getOrganizationConsentRequestById**](DataConsentRequestsAPI.md#getorganizationconsentrequestbyid) | **GET** /v1/consent-requests/organizations/{requestId} | Get a OrganizationConsent Request by Id


# **cancelConsentRequest**
```swift
    open class func cancelConsentRequest(requestId: UUID, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Revoke / Cancel the ConsentRequest based on Id.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let requestId = 987 // UUID | 

// Revoke / Cancel the ConsentRequest based on Id.
DataConsentRequestsAPI.cancelConsentRequest(requestId: requestId) { (response, error) in
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
 **requestId** | [**UUID**](.md) |  | 

### Return type

**Bool**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createRequest**
```swift
    open class func createRequest(dataConsentRequestModel: DataConsentRequestModel? = nil, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Create a consent request.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let dataConsentRequestModel = DataConsentRequestModel(consentTemplateId: 123, startDateTime: Date(), expiryDateTime: Date(), receiver: Receiver(type: ReceiverType(), identifiers: [IdentifierStringKeyValuePair(key: Identifier(), value: "value_example")], identificationStrategy: IdentificationStrategy())) // DataConsentRequestModel | MyDataMyConsent.Models.Consents.DataConsentRequestModel. (optional)

// Create a consent request.
DataConsentRequestsAPI.createRequest(dataConsentRequestModel: dataConsentRequestModel) { (response, error) in
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
 **dataConsentRequestModel** | [**DataConsentRequestModel**](DataConsentRequestModel.md) | MyDataMyConsent.Models.Consents.DataConsentRequestModel. | [optional] 

### Return type

**Bool**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllConsentRequestsToIndividuals**
```swift
    open class func getAllConsentRequestsToIndividuals(pageNo: Int? = nil, pageSize: Int? = nil, status: DataConsentStatus? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get all Consent Requests sent to Individuals.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let pageNo = 987 // Int |  (optional)
let pageSize = 987 // Int |  (optional)
let status = DataConsentStatus() // DataConsentStatus |  (optional)

// Get all Consent Requests sent to Individuals.
DataConsentRequestsAPI.getAllConsentRequestsToIndividuals(pageNo: pageNo, pageSize: pageSize, status: status) { (response, error) in
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
 **status** | [**DataConsentStatus**](.md) |  | [optional] 

### Return type

[**AnyCodable**](AnyCodable.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllConsentRequestsToOrganizations**
```swift
    open class func getAllConsentRequestsToOrganizations(pageNo: Int? = nil, pageSize: Int? = nil, status: DataConsentStatus? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get All Consent Requests sent to Organizations

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let pageNo = 987 // Int |  (optional)
let pageSize = 987 // Int |  (optional)
let status = DataConsentStatus() // DataConsentStatus |  (optional)

// Get All Consent Requests sent to Organizations
DataConsentRequestsAPI.getAllConsentRequestsToOrganizations(pageNo: pageNo, pageSize: pageSize, status: status) { (response, error) in
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
 **status** | [**DataConsentStatus**](.md) |  | [optional] 

### Return type

[**AnyCodable**](AnyCodable.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIndividualConsentRequestById**
```swift
    open class func getIndividualConsentRequestById(requestId: UUID, completion: @escaping (_ data: DataConsentDetailsDto?, _ error: Error?) -> Void)
```

Get a Consent Request by ID.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let requestId = 987 // UUID | 

// Get a Consent Request by ID.
DataConsentRequestsAPI.getIndividualConsentRequestById(requestId: requestId) { (response, error) in
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
 **requestId** | [**UUID**](.md) |  | 

### Return type

[**DataConsentDetailsDto**](DataConsentDetailsDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrganizationConsentRequestById**
```swift
    open class func getOrganizationConsentRequestById(requestId: UUID, completion: @escaping (_ data: DataConsentDetailsDto?, _ error: Error?) -> Void)
```

Get a OrganizationConsent Request by Id

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let requestId = 987 // UUID | 

// Get a OrganizationConsent Request by Id
DataConsentRequestsAPI.getOrganizationConsentRequestById(requestId: requestId) { (response, error) in
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
 **requestId** | [**UUID**](.md) |  | 

### Return type

[**DataConsentDetailsDto**](DataConsentDetailsDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

