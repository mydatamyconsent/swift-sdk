# DataConsentRequestsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelConsentRequest**](DataConsentRequestsAPI.md#cancelconsentrequest) | **DELETE** /v1/consent-requests/{requestId}/cancel | Revoke / Cancel the ConsentRequest based on Id
[**createRequest**](DataConsentRequestsAPI.md#createrequest) | **POST** /v1/consent-requests | Create a consent request.
[**getAllConsentRequests**](DataConsentRequestsAPI.md#getallconsentrequests) | **GET** /v1/consent-requests | Get all Consent Requests.
[**getConsentRequestById**](DataConsentRequestsAPI.md#getconsentrequestbyid) | **GET** /v1/consent-requests/{requestId} | Get a Consent Request by ID.


# **cancelConsentRequest**
```swift
    open class func cancelConsentRequest(requestId: UUID, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Revoke / Cancel the ConsentRequest based on Id

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let requestId = 987 // UUID | 

// Revoke / Cancel the ConsentRequest based on Id
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

# **getAllConsentRequests**
```swift
    open class func getAllConsentRequests(pageNo: Int? = nil, pageSize: Int? = nil, status: DataConsentStatus? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get all Consent Requests.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let pageNo = 987 // Int |  (optional)
let pageSize = 987 // Int |  (optional)
let status = DataConsentStatus() // DataConsentStatus |  (optional)

// Get all Consent Requests.
DataConsentRequestsAPI.getAllConsentRequests(pageNo: pageNo, pageSize: pageSize, status: status) { (response, error) in
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

# **getConsentRequestById**
```swift
    open class func getConsentRequestById(requestId: UUID, completion: @escaping (_ data: DataConsentDetailsDto?, _ error: Error?) -> Void)
```

Get a Consent Request by ID.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let requestId = 987 // UUID | 

// Get a Consent Request by ID.
DataConsentRequestsAPI.getConsentRequestById(requestId: requestId) { (response, error) in
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

