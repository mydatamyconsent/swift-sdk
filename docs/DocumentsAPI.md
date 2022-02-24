# DocumentsAPI

All URIs are relative to *https://api.mydatamyconsent.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getIssuedDocumentById**](DocumentsAPI.md#getissueddocumentbyid) | **GET** /v1/documents/issued/{documentId} | Get issued document.
[**getIssuedDocuments**](DocumentsAPI.md#getissueddocuments) | **GET** /v1/documents/issued/{documentTypeId} | Get paginated list of issued documents of given document type.
[**getRegisteredDocumentTypes**](DocumentsAPI.md#getregistereddocumenttypes) | **GET** /v1/documents/types | Get registered document types.
[**issueDocumentToIndividual**](DocumentsAPI.md#issuedocumenttoindividual) | **POST** /v1/documents/issue/individual | Issue a new document to an individual user.
[**issueDocumentToOrganization**](DocumentsAPI.md#issuedocumenttoorganization) | **POST** /v1/documents/issue/organization | Issue a new document to an organization.
[**uploadDocumentForIndividual**](DocumentsAPI.md#uploaddocumentforindividual) | **POST** /v1/documents/issue/individual/upload/{issueRequestId} | Upload a document for issuance request of individual.
[**uploadDocumentForOrganization**](DocumentsAPI.md#uploaddocumentfororganization) | **POST** /v1/documents/issue/organization/upload/{issueRequestId} | Upload a document for issuance request of organization.


# **getIssuedDocumentById**
```swift
    open class func getIssuedDocumentById(documentId: UUID, completion: @escaping (_ data: IssuedDocument?, _ error: Error?) -> Void)
```

Get issued document.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let documentId = 987 // UUID | Document id.

// Get issued document.
DocumentsAPI.getIssuedDocumentById(documentId: documentId) { (response, error) in
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
 **documentId** | **UUID** | Document id. | 

### Return type

[**IssuedDocument**](IssuedDocument.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIssuedDocuments**
```swift
    open class func getIssuedDocuments(documentTypeId: UUID, fromDateTime: Date? = nil, toDateTime: Date? = nil, pageNo: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: IssuedDocumentPaginatedList?, _ error: Error?) -> Void)
```

Get paginated list of issued documents of given document type.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let documentTypeId = 987 // UUID | Document type id.
let fromDateTime = Date() // Date | From DateTime. (optional)
let toDateTime = Date() // Date | To DateTime. (optional)
let pageNo = 987 // Int | Page number. (optional) (default to 1)
let pageSize = 987 // Int | Number of items to return. (optional) (default to 25)

// Get paginated list of issued documents of given document type.
DocumentsAPI.getIssuedDocuments(documentTypeId: documentTypeId, fromDateTime: fromDateTime, toDateTime: toDateTime, pageNo: pageNo, pageSize: pageSize) { (response, error) in
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
 **documentTypeId** | **UUID** | Document type id. | 
 **fromDateTime** | **Date** | From DateTime. | [optional] 
 **toDateTime** | **Date** | To DateTime. | [optional] 
 **pageNo** | **Int** | Page number. | [optional] [default to 1]
 **pageSize** | **Int** | Number of items to return. | [optional] [default to 25]

### Return type

[**IssuedDocumentPaginatedList**](IssuedDocumentPaginatedList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRegisteredDocumentTypes**
```swift
    open class func getRegisteredDocumentTypes(pageNo: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: DocumentTypePaginatedList?, _ error: Error?) -> Void)
```

Get registered document types.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let pageNo = 987 // Int | Page number. (optional) (default to 1)
let pageSize = 987 // Int | Number of items to return. (optional) (default to 25)

// Get registered document types.
DocumentsAPI.getRegisteredDocumentTypes(pageNo: pageNo, pageSize: pageSize) { (response, error) in
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

[**DocumentTypePaginatedList**](DocumentTypePaginatedList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueDocumentToIndividual**
```swift
    open class func issueDocumentToIndividual(documentIssueRequest: DocumentIssueRequest, completion: @escaping (_ data: DocumentIssueRequestDetails?, _ error: Error?) -> Void)
```

Issue a new document to an individual user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let documentIssueRequest = DocumentIssueRequest(documentTypeId: 123, documentIdentifier: "documentIdentifier_example", description: "description_example", receiver: DocumentReceiver(countryIso2Code: "countryIso2Code_example", identifiers: [StringStringKeyValuePair(key: "key_example", value: "value_example")], identificationStrategy: IdentificationStrategy()), expiresAtUtc: Date(), metadata: "TODO") // DocumentIssueRequest | Document issue request MyDataMyConsent.DeveloperApi.Models.DocumentIssueRequest.

// Issue a new document to an individual user.
DocumentsAPI.issueDocumentToIndividual(documentIssueRequest: documentIssueRequest) { (response, error) in
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
 **documentIssueRequest** | [**DocumentIssueRequest**](DocumentIssueRequest.md) | Document issue request MyDataMyConsent.DeveloperApi.Models.DocumentIssueRequest. | 

### Return type

[**DocumentIssueRequestDetails**](DocumentIssueRequestDetails.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **issueDocumentToOrganization**
```swift
    open class func issueDocumentToOrganization(documentIssueRequest: DocumentIssueRequest, completion: @escaping (_ data: DocumentIssueRequestDetails?, _ error: Error?) -> Void)
```

Issue a new document to an organization.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let documentIssueRequest = DocumentIssueRequest(documentTypeId: 123, documentIdentifier: "documentIdentifier_example", description: "description_example", receiver: DocumentReceiver(countryIso2Code: "countryIso2Code_example", identifiers: [StringStringKeyValuePair(key: "key_example", value: "value_example")], identificationStrategy: IdentificationStrategy()), expiresAtUtc: Date(), metadata: "TODO") // DocumentIssueRequest | Document issue request MyDataMyConsent.DeveloperApi.Models.DocumentIssueRequest.

// Issue a new document to an organization.
DocumentsAPI.issueDocumentToOrganization(documentIssueRequest: documentIssueRequest) { (response, error) in
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
 **documentIssueRequest** | [**DocumentIssueRequest**](DocumentIssueRequest.md) | Document issue request MyDataMyConsent.DeveloperApi.Models.DocumentIssueRequest. | 

### Return type

[**DocumentIssueRequestDetails**](DocumentIssueRequestDetails.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadDocumentForIndividual**
```swift
    open class func uploadDocumentForIndividual(issueRequestId: UUID, formFile: URL? = nil, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Upload a document for issuance request of individual.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let issueRequestId = 987 // UUID | Issue Request Id System.Guid.
let formFile = URL(string: "https://example.com")! // URL |  (optional)

// Upload a document for issuance request of individual.
DocumentsAPI.uploadDocumentForIndividual(issueRequestId: issueRequestId, formFile: formFile) { (response, error) in
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
 **issueRequestId** | **UUID** | Issue Request Id System.Guid. | 
 **formFile** | **URL** |  | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadDocumentForOrganization**
```swift
    open class func uploadDocumentForOrganization(issueRequestId: UUID, formFile: URL? = nil, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Upload a document for issuance request of organization.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let issueRequestId = 987 // UUID | Issue Request Id System.Guid.
let formFile = URL(string: "https://example.com")! // URL |  (optional)

// Upload a document for issuance request of organization.
DocumentsAPI.uploadDocumentForOrganization(issueRequestId: issueRequestId, formFile: formFile) { (response, error) in
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
 **issueRequestId** | **UUID** | Issue Request Id System.Guid. | 
 **formFile** | **URL** |  | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

