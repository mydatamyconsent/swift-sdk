# DataConsentRequestsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelConsentRequest**](DataConsentRequestsAPI.md#cancelconsentrequest) | **DELETE** /v1/consent-requests/{requestId}/cancel | Cancel a Consent Request by ID.
[**createRequest**](DataConsentRequestsAPI.md#createrequest) | **POST** /v1/consent-requests | Create a consent request.
[**getAllConsentRequests**](DataConsentRequestsAPI.md#getallconsentrequests) | **GET** /v1/consent-requests | Get all Consent Requests.
[**getConsentRequestById**](DataConsentRequestsAPI.md#getconsentrequestbyid) | **GET** /v1/consent-requests/{requestId} | Get a Consent Request by ID.


# **cancelConsentRequest**
```swift
    open class func cancelConsentRequest(requestId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Cancel a Consent Request by ID.

.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let requestId = 987 // UUID | consent request id.

// Cancel a Consent Request by ID.
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
 **requestId** | [**UUID**](.md) | consent request id. | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createRequest**
```swift
    open class func createRequest(dataConsentRequestModel: DataConsentRequestModel? = nil, completion: @escaping (_ data: DataConsent?, _ error: Error?) -> Void)
```

Create a consent request.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let dataConsentRequestModel = DataConsentRequestModel(organizationId: 123, transactionId: "transactionId_example", identifiers: "TODO", startDateTime: Date(), expiryDateTime: Date(), description: "description_example", purposeCode: "purposeCode_example", purposeLink: "purposeLink_example", dataLifeUnit: DataLifeUnit(), dataLifeValue: 123, dataFetchFrequencyUnit: DataFetchFrequencyUnit(), dataFetchFrequencyUnitValue: 123, dataFetchType: DataFetchType(), agreementId: 123, identityClaims: [IdentityClaim()], financialAccounts: [DataConsentRequestedFaDto(drn: "drn_example", fromDatetime: Date(), toDatetime: Date(), providerId: 123, accountType: FinancialAccountTypes(), accountIdentifier: "accountIdentifier_example", filters: [DataConsentRfaFilterDto(filterType: FilterType(), _operator: Operator(), value: "value_example")])], documents: [DataConsentRequestedDocumentDto(drn: "drn_example", fromDatetime: Date(), toDatetime: Date(), providerId: 123, documentTypeId: "documentTypeId_example", documentIdentifier: "documentIdentifier_example")]) // DataConsentRequestModel | MyDataMyConsent.Models.Consents.DataConsentRequestModel. (optional)

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

[**DataConsent**](DataConsent.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllConsentRequests**
```swift
    open class func getAllConsentRequests(status: DataConsentStatus? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get all Consent Requests.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let status = DataConsentStatus() // DataConsentStatus |  (optional)

// Get all Consent Requests.
DataConsentRequestsAPI.getAllConsentRequests(status: status) { (response, error) in
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
 **status** | [**DataConsentStatus**](.md) |  | [optional] 

### Return type

[**AnyCodable**](AnyCodable.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getConsentRequestById**
```swift
    open class func getConsentRequestById(requestId: UUID, completion: @escaping (_ data: DataConsentDetailsDto?, _ error: Error?) -> Void)
```

Get a Consent Request by ID.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

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
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

