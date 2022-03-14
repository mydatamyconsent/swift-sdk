# DataConsentRequestsAPI

All URIs are relative to *https://api.mydatamyconsent.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelIndividualDataConsentRequest**](DataConsentRequestsAPI.md#cancelindividualdataconsentrequest) | **PUT** /v1/consent-requests/individual/{requestId}/cancel | Cancel the individual data consent request by Id.
[**cancelOrganizationDataConsentRequest**](DataConsentRequestsAPI.md#cancelorganizationdataconsentrequest) | **PUT** /v1/consent-requests/organization/{requestId}/cancel | Cancel the organization data consent request by Id.
[**createIndividualDataConsentRequest**](DataConsentRequestsAPI.md#createindividualdataconsentrequest) | **POST** /v1/consent-requests/individual | Create data consent request for an individual.
[**createOrganizationDataConsentRequest**](DataConsentRequestsAPI.md#createorganizationdataconsentrequest) | **POST** /v1/consent-requests/organization | Create data consent request for an organization.
[**getAllConsentRequestsToIndividuals**](DataConsentRequestsAPI.md#getallconsentrequeststoindividuals) | **GET** /v1/consent-requests/individuals | Get all Consent Requests sent to individuals.
[**getAllConsentRequestsToOrganizations**](DataConsentRequestsAPI.md#getallconsentrequeststoorganizations) | **GET** /v1/consent-requests/organizations | Get all Consent Requests sent to organizations.
[**getIndividualConsentRequestById**](DataConsentRequestsAPI.md#getindividualconsentrequestbyid) | **GET** /v1/consent-requests/individuals/{requestId} | Get individual data consent request by id.
[**getOrganizationConsentRequestById**](DataConsentRequestsAPI.md#getorganizationconsentrequestbyid) | **GET** /v1/consent-requests/organizations/{requestId} | Get a OrganizationConsent Request by Id.


# **cancelIndividualDataConsentRequest**
```swift
    open class func cancelIndividualDataConsentRequest(requestId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Cancel the individual data consent request by Id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let requestId = 987 // UUID | Individual consent request id.

// Cancel the individual data consent request by Id.
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

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cancelOrganizationDataConsentRequest**
```swift
    open class func cancelOrganizationDataConsentRequest(requestId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Cancel the organization data consent request by Id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let requestId = 987 // UUID | Organization consent request id.

// Cancel the organization data consent request by Id.
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

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createIndividualDataConsentRequest**
```swift
    open class func createIndividualDataConsentRequest(createDataConsentRequest: CreateDataConsentRequest, completion: @escaping (_ data: IndividualDataConsentRequestDetails?, _ error: Error?) -> Void)
```

Create data consent request for an individual.

Create data consent request for an individual.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let createDataConsentRequest = CreateDataConsentRequest(consentTemplateId: 123, receiver: ConsentRequestReceiver(countryIso2Code: "countryIso2Code_example", identifiers: [StringStringKeyValuePair(key: "key_example", value: "value_example")], identificationStrategy: IdentificationStrategy())) // CreateDataConsentRequest | The Individual data consent request payload

// Create data consent request for an individual.
DataConsentRequestsAPI.createIndividualDataConsentRequest(createDataConsentRequest: createDataConsentRequest) { (response, error) in
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
 **createDataConsentRequest** | [**CreateDataConsentRequest**](CreateDataConsentRequest.md) | The Individual data consent request payload | 

### Return type

[**IndividualDataConsentRequestDetails**](IndividualDataConsentRequestDetails.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createOrganizationDataConsentRequest**
```swift
    open class func createOrganizationDataConsentRequest(createDataConsentRequest: CreateDataConsentRequest, completion: @escaping (_ data: OrganizationDataConsentRequestDetails?, _ error: Error?) -> Void)
```

Create data consent request for an organization.

Create data consent request for an organization.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let createDataConsentRequest = CreateDataConsentRequest(consentTemplateId: 123, receiver: ConsentRequestReceiver(countryIso2Code: "countryIso2Code_example", identifiers: [StringStringKeyValuePair(key: "key_example", value: "value_example")], identificationStrategy: IdentificationStrategy())) // CreateDataConsentRequest | The Organization data consent request payload

// Create data consent request for an organization.
DataConsentRequestsAPI.createOrganizationDataConsentRequest(createDataConsentRequest: createDataConsentRequest) { (response, error) in
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
 **createDataConsentRequest** | [**CreateDataConsentRequest**](CreateDataConsentRequest.md) | The Organization data consent request payload | 

### Return type

[**OrganizationDataConsentRequestDetails**](OrganizationDataConsentRequestDetails.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllConsentRequestsToIndividuals**
```swift
    open class func getAllConsentRequestsToIndividuals(status: DataConsentStatus? = nil, startDateTime: Date? = nil, endDateTime: Date? = nil, pageNo: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: IndividualDataConsentRequestDetailsPaginatedList?, _ error: Error?) -> Void)
```

Get all Consent Requests sent to individuals.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let status = DataConsentStatus() // DataConsentStatus | Data consent status. (optional)
let startDateTime = Date() // Date | Start datetime in UTC timezone. (optional)
let endDateTime = Date() // Date | End datetime in UTC timezone. (optional)
let pageNo = 987 // Int | Page number. (optional) (default to 1)
let pageSize = 987 // Int | Number of items to return. (optional) (default to 25)

// Get all Consent Requests sent to individuals.
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
 **startDateTime** | **Date** | Start datetime in UTC timezone. | [optional] 
 **endDateTime** | **Date** | End datetime in UTC timezone. | [optional] 
 **pageNo** | **Int** | Page number. | [optional] [default to 1]
 **pageSize** | **Int** | Number of items to return. | [optional] [default to 25]

### Return type

[**IndividualDataConsentRequestDetailsPaginatedList**](IndividualDataConsentRequestDetailsPaginatedList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllConsentRequestsToOrganizations**
```swift
    open class func getAllConsentRequestsToOrganizations(status: DataConsentStatus? = nil, startDateTime: Date? = nil, endDateTime: Date? = nil, pageNo: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: OrganizationDataConsentRequestDetailsPaginatedList?, _ error: Error?) -> Void)
```

Get all Consent Requests sent to organizations.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let status = DataConsentStatus() // DataConsentStatus | Data consent status. (optional)
let startDateTime = Date() // Date | Start datetime in UTC timezone. (optional)
let endDateTime = Date() // Date | End datetime in UTC timezone. (optional)
let pageNo = 987 // Int | Page number. (optional) (default to 1)
let pageSize = 987 // Int | Number of items to return. (optional) (default to 25)

// Get all Consent Requests sent to organizations.
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
 **startDateTime** | **Date** | Start datetime in UTC timezone. | [optional] 
 **endDateTime** | **Date** | End datetime in UTC timezone. | [optional] 
 **pageNo** | **Int** | Page number. | [optional] [default to 1]
 **pageSize** | **Int** | Number of items to return. | [optional] [default to 25]

### Return type

[**OrganizationDataConsentRequestDetailsPaginatedList**](OrganizationDataConsentRequestDetailsPaginatedList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIndividualConsentRequestById**
```swift
    open class func getIndividualConsentRequestById(requestId: UUID, completion: @escaping (_ data: DataConsentRequest?, _ error: Error?) -> Void)
```

Get individual data consent request by id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let requestId = 987 // UUID | Individual data consent request id.

// Get individual data consent request by id.
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
 **requestId** | **UUID** | Individual data consent request id. | 

### Return type

[**DataConsentRequest**](DataConsentRequest.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrganizationConsentRequestById**
```swift
    open class func getOrganizationConsentRequestById(requestId: UUID, completion: @escaping (_ data: DataConsentRequest?, _ error: Error?) -> Void)
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

[**DataConsentRequest**](DataConsentRequest.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

