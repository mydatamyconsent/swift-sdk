# DataConsentRequestsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelIndividualDataConsentRequest**](DataConsentRequestsAPI.md#cancelindividualdataconsentrequest) | **PUT** /v1/consent-requests/individual/{requestId}/cancel | Cancel the individual data consent request based on Id.
[**cancelOrganizationDataConsentRequest**](DataConsentRequestsAPI.md#cancelorganizationdataconsentrequest) | **PUT** /v1/consent-requests/organization/{requestId}/cancel | Cancel the Organization data consent request based on Id.
[**createIndividualDataConsentRequest**](DataConsentRequestsAPI.md#createindividualdataconsentrequest) | **POST** /v1/consent-requests/individual | Create a individual data consent request.
[**createOrganizationDataConsentRequest**](DataConsentRequestsAPI.md#createorganizationdataconsentrequest) | **POST** /v1/consent-requests/organization | Create a organization data consent request.
[**getAllConsentRequestsToIndividuals**](DataConsentRequestsAPI.md#getallconsentrequeststoindividuals) | **GET** /v1/consent-requests/individuals | Get all Consent Requests sent to Individuals.
[**getAllConsentRequestsToOrganizations**](DataConsentRequestsAPI.md#getallconsentrequeststoorganizations) | **GET** /v1/consent-requests/organizations | Get All Consent Requests sent to Organizations.
[**getIndividualConsentRequestById**](DataConsentRequestsAPI.md#getindividualconsentrequestbyid) | **GET** /v1/consent-requests/individuals/{requestId} | Get a Consent Request by ID.
[**getOrganizationConsentRequestById**](DataConsentRequestsAPI.md#getorganizationconsentrequestbyid) | **GET** /v1/consent-requests/organizations/{requestId} | Get a OrganizationConsent Request by Id.


# **cancelIndividualDataConsentRequest**
```swift
    open class func cancelIndividualDataConsentRequest(requestId: UUID, completion: @escaping (_ data: IndividualDataConsentRequestResponse?, _ error: Error?) -> Void)
```

Cancel the individual data consent request based on Id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let requestId = 987 // UUID | Individual consent request id.

// Cancel the individual data consent request based on Id.
DataConsentRequestsAPI.cancelIndividualDataConsentRequest(requestId: requestId) { (response, error) in
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
 **requestId** | **UUID** | Individual consent request id. | 

### Return type

[**IndividualDataConsentRequestResponse**](IndividualDataConsentRequestResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cancelOrganizationDataConsentRequest**
```swift
    open class func cancelOrganizationDataConsentRequest(requestId: UUID, completion: @escaping (_ data: OrganizationDataConsentRequestResponse?, _ error: Error?) -> Void)
```

Cancel the Organization data consent request based on Id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let requestId = 987 // UUID | Organization consent request id.

// Cancel the Organization data consent request based on Id.
DataConsentRequestsAPI.cancelOrganizationDataConsentRequest(requestId: requestId) { (response, error) in
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
 **requestId** | **UUID** | Organization consent request id. | 

### Return type

[**OrganizationDataConsentRequestResponse**](OrganizationDataConsentRequestResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createIndividualDataConsentRequest**
```swift
    open class func createIndividualDataConsentRequest(createIndividualDataConsentRequest: CreateIndividualDataConsentRequest, completion: @escaping (_ data: IndividualDataConsentRequestResponse?, _ error: Error?) -> Void)
```

Create a individual data consent request.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let createIndividualDataConsentRequest = CreateIndividualDataConsentRequest(consentTemplateId: 123, receiver: Receiver(type: ReceiverType(), identifiers: [IdentifierStringKeyValuePair(key: Identifier(), value: "value_example")], identificationStrategy: IdentificationStrategy())) // CreateIndividualDataConsentRequest | M:MyDataMyConsent.DeveloperApi.Controllers.DataConsentRequestsController.CreateIndividualDataConsentRequest(MyDataMyConsent.DeveloperApi.Models.CreateIndividualDataConsentRequest).

// Create a individual data consent request.
DataConsentRequestsAPI.createIndividualDataConsentRequest(createIndividualDataConsentRequest: createIndividualDataConsentRequest) { (response, error) in
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
 **createIndividualDataConsentRequest** | [**CreateIndividualDataConsentRequest**](CreateIndividualDataConsentRequest.md) | M:MyDataMyConsent.DeveloperApi.Controllers.DataConsentRequestsController.CreateIndividualDataConsentRequest(MyDataMyConsent.DeveloperApi.Models.CreateIndividualDataConsentRequest). | 

### Return type

[**IndividualDataConsentRequestResponse**](IndividualDataConsentRequestResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createOrganizationDataConsentRequest**
```swift
    open class func createOrganizationDataConsentRequest(createOrganizationDataConsentRequest: CreateOrganizationDataConsentRequest, completion: @escaping (_ data: OrganizationDataConsentRequestResponse?, _ error: Error?) -> Void)
```

Create a organization data consent request.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let createOrganizationDataConsentRequest = CreateOrganizationDataConsentRequest(consentTemplateId: 123, receiver: Receiver(type: ReceiverType(), identifiers: [IdentifierStringKeyValuePair(key: Identifier(), value: "value_example")], identificationStrategy: IdentificationStrategy())) // CreateOrganizationDataConsentRequest | M:MyDataMyConsent.DeveloperApi.Controllers.DataConsentRequestsController.CreateOrganizationDataConsentRequest(MyDataMyConsent.DeveloperApi.Models.CreateOrganizationDataConsentRequest).

// Create a organization data consent request.
DataConsentRequestsAPI.createOrganizationDataConsentRequest(createOrganizationDataConsentRequest: createOrganizationDataConsentRequest) { (response, error) in
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
 **createOrganizationDataConsentRequest** | [**CreateOrganizationDataConsentRequest**](CreateOrganizationDataConsentRequest.md) | M:MyDataMyConsent.DeveloperApi.Controllers.DataConsentRequestsController.CreateOrganizationDataConsentRequest(MyDataMyConsent.DeveloperApi.Models.CreateOrganizationDataConsentRequest). | 

### Return type

[**OrganizationDataConsentRequestResponse**](OrganizationDataConsentRequestResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllConsentRequestsToIndividuals**
```swift
    open class func getAllConsentRequestsToIndividuals(status: DataConsentStatus? = nil, startDateTime: Date? = nil, endDateTime: Date? = nil, pageNo: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: UserDataConsentInfoDtoPaginatedList?, _ error: Error?) -> Void)
```

Get all Consent Requests sent to Individuals.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let status = DataConsentStatus() // DataConsentStatus | Data consent status. (optional)
let startDateTime = Date() // Date | Start date time. (optional)
let endDateTime = Date() // Date | End date time. (optional)
let pageNo = 987 // Int | Page number. (optional) (default to 1)
let pageSize = 987 // Int | Number of items to return. (optional) (default to 25)

// Get all Consent Requests sent to Individuals.
DataConsentRequestsAPI.getAllConsentRequestsToIndividuals(status: status, startDateTime: startDateTime, endDateTime: endDateTime, pageNo: pageNo, pageSize: pageSize) { (response, error) in
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
 **status** | [**DataConsentStatus**](.md) | Data consent status. | [optional] 
 **startDateTime** | **Date** | Start date time. | [optional] 
 **endDateTime** | **Date** | End date time. | [optional] 
 **pageNo** | **Int** | Page number. | [optional] [default to 1]
 **pageSize** | **Int** | Number of items to return. | [optional] [default to 25]

### Return type

[**UserDataConsentInfoDtoPaginatedList**](UserDataConsentInfoDtoPaginatedList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllConsentRequestsToOrganizations**
```swift
    open class func getAllConsentRequestsToOrganizations(status: DataConsentStatus? = nil, startDateTime: Date? = nil, endDateTime: Date? = nil, pageNo: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: OrganizationDataConsentInfoDtoPaginatedList?, _ error: Error?) -> Void)
```

Get All Consent Requests sent to Organizations.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let status = DataConsentStatus() // DataConsentStatus | Data consent status. (optional)
let startDateTime = Date() // Date | Start date time. (optional)
let endDateTime = Date() // Date | End date time. (optional)
let pageNo = 987 // Int | Page number. (optional) (default to 1)
let pageSize = 987 // Int | Number of items to return. (optional) (default to 25)

// Get All Consent Requests sent to Organizations.
DataConsentRequestsAPI.getAllConsentRequestsToOrganizations(status: status, startDateTime: startDateTime, endDateTime: endDateTime, pageNo: pageNo, pageSize: pageSize) { (response, error) in
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
 **status** | [**DataConsentStatus**](.md) | Data consent status. | [optional] 
 **startDateTime** | **Date** | Start date time. | [optional] 
 **endDateTime** | **Date** | End date time. | [optional] 
 **pageNo** | **Int** | Page number. | [optional] [default to 1]
 **pageSize** | **Int** | Number of items to return. | [optional] [default to 25]

### Return type

[**OrganizationDataConsentInfoDtoPaginatedList**](OrganizationDataConsentInfoDtoPaginatedList.md)

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

let requestId = 987 // UUID | Individual consent request id.

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
 **requestId** | **UUID** | Individual consent request id. | 

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

Get a OrganizationConsent Request by Id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let requestId = 987 // UUID | Organization consent request id.

// Get a OrganizationConsent Request by Id.
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
 **requestId** | **UUID** | Organization consent request id. | 

### Return type

[**DataConsentDetailsDto**](DataConsentDetailsDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

