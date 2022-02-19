# DocumentsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**issueDocument**](DocumentsAPI.md#issuedocument) | **POST** /v1/documents/issue | Issue a new document.
[**v1DocumentsIssuedDocumentIdGet**](DocumentsAPI.md#v1documentsissueddocumentidget) | **GET** /v1/documents/issued/{documentId} | Get issued document.
[**v1DocumentsIssuedGet**](DocumentsAPI.md#v1documentsissuedget) | **GET** /v1/documents/issued | Get issued documents.
[**v1DocumentsTypesGet**](DocumentsAPI.md#v1documentstypesget) | **GET** /v1/documents/types | Get registered document types.


# **issueDocument**
```swift
    open class func issueDocument(documentIssueRequest: DocumentIssueRequest? = nil, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Issue a new document.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let documentIssueRequest = DocumentIssueRequest(documentTypeId: "documentTypeId_example", documentIdentifier: "documentIdentifier_example", name: "name_example", description: "description_example", receiver: Receiver(type: ReceiverType(), identifiers: [IdentifierStringKeyValuePair(key: Identifier(), value: "value_example")], identificationStrategy: IdentificationStrategy()), expiresAtUtc: "expiresAtUtc_example", base64PdfDocument: "base64PdfDocument_example", metadata: "TODO") // DocumentIssueRequest |  (optional)

// Issue a new document.
DocumentsAPI.issueDocument(documentIssueRequest: documentIssueRequest) { (response, error) in
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
 **documentIssueRequest** | [**DocumentIssueRequest**](DocumentIssueRequest.md) |  | [optional] 

### Return type

**Bool**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1DocumentsIssuedDocumentIdGet**
```swift
    open class func v1DocumentsIssuedDocumentIdGet(documentId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Get issued document.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let documentId = 987 // UUID | Document id.

// Get issued document.
DocumentsAPI.v1DocumentsIssuedDocumentIdGet(documentId: documentId) { (response, error) in
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
 **documentId** | [**UUID**](.md) | Document id. | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1DocumentsIssuedGet**
```swift
    open class func v1DocumentsIssuedGet(documentTypeId: UUID? = nil, fromDateTime: Date? = nil, toDateTime: Date? = nil, pageSize: Int? = nil, pageNo: Int? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Get issued documents.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let documentTypeId = 987 // UUID |  (optional)
let fromDateTime = Date() // Date |  (optional)
let toDateTime = Date() // Date |  (optional)
let pageSize = 987 // Int |  (optional) (default to 25)
let pageNo = 987 // Int |  (optional) (default to 1)

// Get issued documents.
DocumentsAPI.v1DocumentsIssuedGet(documentTypeId: documentTypeId, fromDateTime: fromDateTime, toDateTime: toDateTime, pageSize: pageSize, pageNo: pageNo) { (response, error) in
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
 **documentTypeId** | [**UUID**](.md) |  | [optional] 
 **fromDateTime** | **Date** |  | [optional] 
 **toDateTime** | **Date** |  | [optional] 
 **pageSize** | **Int** |  | [optional] [default to 25]
 **pageNo** | **Int** |  | [optional] [default to 1]

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1DocumentsTypesGet**
```swift
    open class func v1DocumentsTypesGet(pageSize: Int? = nil, pageNo: Int? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Get registered document types.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let pageSize = 987 // Int |  (optional) (default to 25)
let pageNo = 987 // Int |  (optional) (default to 1)

// Get registered document types.
DocumentsAPI.v1DocumentsTypesGet(pageSize: pageSize, pageNo: pageNo) { (response, error) in
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
 **pageSize** | **Int** |  | [optional] [default to 25]
 **pageNo** | **Int** |  | [optional] [default to 1]

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

