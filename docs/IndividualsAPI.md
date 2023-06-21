# IndividualsAPI

All URIs are relative to *https://api.mydatamyconsent.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**issuerIssuedoc1XmlPost**](IndividualsAPI.md#issuerissuedoc1xmlpost) | **POST** /issuer/issuedoc/1/xml | Digilocker compatible endpoint to issue document.
[**v1IndividualsConsentRequestsGet**](IndividualsAPI.md#v1individualsconsentrequestsget) | **GET** /v1/individuals/consent-requests | Get all consent requests sent to Individuals.
[**v1IndividualsConsentRequestsPost**](IndividualsAPI.md#v1individualsconsentrequestspost) | **POST** /v1/individuals/consent-requests | Create individual consent request.
[**v1IndividualsConsentRequestsRequestIdCancelPut**](IndividualsAPI.md#v1individualsconsentrequestsrequestidcancelput) | **PUT** /v1/individuals/consent-requests/{request_id}/cancel | Cancel the Individual data request by id.
[**v1IndividualsConsentRequestsRequestIdGet**](IndividualsAPI.md#v1individualsconsentrequestsrequestidget) | **GET** /v1/individuals/consent-requests/{request_id} | Get Individual data consent request by id.
[**v1IndividualsConsentTemplatesGet**](IndividualsAPI.md#v1individualsconsenttemplatesget) | **GET** /v1/individuals/consent-templates | Get the paginated list of individual consent templates.
[**v1IndividualsConsentTemplatesTemplateIdGet**](IndividualsAPI.md#v1individualsconsenttemplatestemplateidget) | **GET** /v1/individuals/consent-templates/{template_id} | Get Individual consent template details by consent id.
[**v1IndividualsConsentsConsentIdDocumentsDocumentIdDownloadGet**](IndividualsAPI.md#v1individualsconsentsconsentiddocumentsdocumentiddownloadget) | **GET** /v1/individuals/consents/{consent_id}/documents/{document_id}/download | Download Individual consented document by document id.
[**v1IndividualsConsentsConsentIdDocumentsDocumentIdGet**](IndividualsAPI.md#v1individualsconsentsconsentiddocumentsdocumentidget) | **GET** /v1/individuals/consents/{consent_id}/documents/{document_id} | Get Individual consented document by document id.
[**v1IndividualsConsentsConsentIdDocumentsGet**](IndividualsAPI.md#v1individualsconsentsconsentiddocumentsget) | **GET** /v1/individuals/consents/{consent_id}/documents | Get Individual consented document by consent id.
[**v1IndividualsConsentsConsentIdFinancialAccountsAccountIdGet**](IndividualsAPI.md#v1individualsconsentsconsentidfinancialaccountsaccountidget) | **GET** /v1/individuals/consents/{consent_id}/financial-accounts/{account_id} | Get individual consented financial account details.
[**v1IndividualsConsentsConsentIdFinancialAccountsAccountIdTransactionsGet**](IndividualsAPI.md#v1individualsconsentsconsentidfinancialaccountsaccountidtransactionsget) | **GET** /v1/individuals/consents/{consent_id}/financial-accounts/{account_id}/transactions | Get individual consented financial account transactions.
[**v1IndividualsConsentsConsentIdFinancialAccountsGet**](IndividualsAPI.md#v1individualsconsentsconsentidfinancialaccountsget) | **GET** /v1/individuals/consents/{consent_id}/financial-accounts | Get all individual consented financial accounts.
[**v1IndividualsConsentsConsentIdGet**](IndividualsAPI.md#v1individualsconsentsconsentidget) | **GET** /v1/individuals/consents/{consent_id} | Get Individuals consent details by consent id.
[**v1IndividualsConsentsConsentIdHealthFhirBundleGet**](IndividualsAPI.md#v1individualsconsentsconsentidhealthfhirbundleget) | **GET** /v1/individuals/consents/{consent_id}/health/fhir/bundle | Get Individual consented Health Records by consent id.
[**v1IndividualsConsentsGet**](IndividualsAPI.md#v1individualsconsentsget) | **GET** /v1/individuals/consents | Get the paginated list of Individual consents.
[**v1IndividualsDocumentsIssueIssueRequestIdUploadPost**](IndividualsAPI.md#v1individualsdocumentsissueissuerequestiduploadpost) | **POST** /v1/individuals/documents/issue/{issue_request_id}/upload | Upload a document for issuance request of individual.
[**v1IndividualsDocumentsIssuePost**](IndividualsAPI.md#v1individualsdocumentsissuepost) | **POST** /v1/individuals/documents/issue | Issue a new document to an individual user.
[**v1IndividualsDocumentsIssuedDocumentIdGet**](IndividualsAPI.md#v1individualsdocumentsissueddocumentidget) | **GET** /v1/individuals/documents/issued/{document_id} | Get issued document.
[**v1IndividualsDocumentsIssuedGet**](IndividualsAPI.md#v1individualsdocumentsissuedget) | **GET** /v1/individuals/documents/issued | Get paginated list of issued documents of given document type.
[**v1IndividualsDocumentsTypesGet**](IndividualsAPI.md#v1individualsdocumentstypesget) | **GET** /v1/individuals/documents/types | Get paginated list of registered document types.


# **issuerIssuedoc1XmlPost**
```swift
    open class func issuerIssuedoc1XmlPost(pushUriRequest: PushUriRequest, completion: @escaping (_ data: PushUriResponse?, _ error: Error?) -> Void)
```

Digilocker compatible endpoint to issue document.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let pushUriRequest = PushUriRequest(uriDetails: UriDetails(aadhaar: "aadhaar_example", uri: "uri_example", docType: "docType_example", docName: "docName_example", docId: "docId_example", issuedOn: "issuedOn_example", validFrom: "validFrom_example", validTo: "validTo_example", timestamp: "timestamp_example", action: "action_example"), ns2: "ns2_example", ver: "ver_example", ts: "ts_example", txn: "txn_example", orgId: "orgId_example", keyHash: "keyHash_example") // PushUriRequest | 

// Digilocker compatible endpoint to issue document.
IndividualsAPI.issuerIssuedoc1XmlPost(pushUriRequest: pushUriRequest) { (response, error) in
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
 **pushUriRequest** | [**PushUriRequest**](PushUriRequest.md) |  | 

### Return type

[**PushUriResponse**](PushUriResponse.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: application/json; charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1IndividualsConsentRequestsGet**
```swift
    open class func v1IndividualsConsentRequestsGet(status: DataConsentStatus? = nil, fromDateTime: Date? = nil, toDateTime: Date? = nil, pageNo: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: PaginatedListOfIndividualConsentRequestDetailss?, _ error: Error?) -> Void)
```

Get all consent requests sent to Individuals.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let status = DataConsentStatus() // DataConsentStatus |  (optional)
let fromDateTime = Date() // Date |  (optional)
let toDateTime = Date() // Date |  (optional)
let pageNo = 987 // Int |  (optional)
let pageSize = 987 // Int |  (optional)

// Get all consent requests sent to Individuals.
IndividualsAPI.v1IndividualsConsentRequestsGet(status: status, fromDateTime: fromDateTime, toDateTime: toDateTime, pageNo: pageNo, pageSize: pageSize) { (response, error) in
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
 **fromDateTime** | **Date** |  | [optional] 
 **toDateTime** | **Date** |  | [optional] 
 **pageNo** | **Int** |  | [optional] 
 **pageSize** | **Int** |  | [optional] 

### Return type

[**PaginatedListOfIndividualConsentRequestDetailss**](PaginatedListOfIndividualConsentRequestDetailss.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1IndividualsConsentRequestsPost**
```swift
    open class func v1IndividualsConsentRequestsPost(createConsentRequest: CreateConsentRequest, completion: @escaping (_ data: IndividualConsentRequestDetails?, _ error: Error?) -> Void)
```

Create individual consent request.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let createConsentRequest = CreateConsentRequest(consentTemplateId: "consentTemplateId_example", receiver: ConsentRequestReceiver(countryIso2Code: "countryIso2Code_example", identifiers: [KeyValuePair(key: "key_example", value: "value_example")], identificationStrategy: IdentificationStrategy())) // CreateConsentRequest | 

// Create individual consent request.
IndividualsAPI.v1IndividualsConsentRequestsPost(createConsentRequest: createConsentRequest) { (response, error) in
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
 **createConsentRequest** | [**CreateConsentRequest**](CreateConsentRequest.md) |  | 

### Return type

[**IndividualConsentRequestDetails**](IndividualConsentRequestDetails.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: application/json; charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1IndividualsConsentRequestsRequestIdCancelPut**
```swift
    open class func v1IndividualsConsentRequestsRequestIdCancelPut(requestId: String, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Cancel the Individual data request by id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let requestId = "requestId_example" // String | 

// Cancel the Individual data request by id.
IndividualsAPI.v1IndividualsConsentRequestsRequestIdCancelPut(requestId: requestId) { (response, error) in
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
 **requestId** | **String** |  | 

### Return type

**Bool**

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1IndividualsConsentRequestsRequestIdGet**
```swift
    open class func v1IndividualsConsentRequestsRequestIdGet(requestId: String, completion: @escaping (_ data: ConsentRequest?, _ error: Error?) -> Void)
```

Get Individual data consent request by id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let requestId = "requestId_example" // String | 

// Get Individual data consent request by id.
IndividualsAPI.v1IndividualsConsentRequestsRequestIdGet(requestId: requestId) { (response, error) in
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
 **requestId** | **String** |  | 

### Return type

[**ConsentRequest**](ConsentRequest.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1IndividualsConsentTemplatesGet**
```swift
    open class func v1IndividualsConsentTemplatesGet(pageNo: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: PaginatedListOfConsentRequestTemplates?, _ error: Error?) -> Void)
```

Get the paginated list of individual consent templates.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let pageNo = 987 // Int |  (optional)
let pageSize = 987 // Int |  (optional)

// Get the paginated list of individual consent templates.
IndividualsAPI.v1IndividualsConsentTemplatesGet(pageNo: pageNo, pageSize: pageSize) { (response, error) in
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

### Return type

[**PaginatedListOfConsentRequestTemplates**](PaginatedListOfConsentRequestTemplates.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1IndividualsConsentTemplatesTemplateIdGet**
```swift
    open class func v1IndividualsConsentTemplatesTemplateIdGet(templateId: String, completion: @escaping (_ data: IndividualConsentRequestTemplateDetails?, _ error: Error?) -> Void)
```

Get Individual consent template details by consent id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let templateId = "templateId_example" // String | 

// Get Individual consent template details by consent id.
IndividualsAPI.v1IndividualsConsentTemplatesTemplateIdGet(templateId: templateId) { (response, error) in
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
 **templateId** | **String** |  | 

### Return type

[**IndividualConsentRequestTemplateDetails**](IndividualConsentRequestTemplateDetails.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1IndividualsConsentsConsentIdDocumentsDocumentIdDownloadGet**
```swift
    open class func v1IndividualsConsentsConsentIdDocumentsDocumentIdDownloadGet(consentId: String, documentId: String, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```

Download Individual consented document by document id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = "consentId_example" // String | 
let documentId = "documentId_example" // String | 

// Download Individual consented document by document id.
IndividualsAPI.v1IndividualsConsentsConsentIdDocumentsDocumentIdDownloadGet(consentId: consentId, documentId: documentId) { (response, error) in
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
 **consentId** | **String** |  | 
 **documentId** | **String** |  | 

### Return type

**URL**

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/json; charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1IndividualsConsentsConsentIdDocumentsDocumentIdGet**
```swift
    open class func v1IndividualsConsentsConsentIdDocumentsDocumentIdGet(consentId: String, documentId: String, completion: @escaping (_ data: ConsentedDocument?, _ error: Error?) -> Void)
```

Get Individual consented document by document id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = "consentId_example" // String | 
let documentId = "documentId_example" // String | 

// Get Individual consented document by document id.
IndividualsAPI.v1IndividualsConsentsConsentIdDocumentsDocumentIdGet(consentId: consentId, documentId: documentId) { (response, error) in
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
 **consentId** | **String** |  | 
 **documentId** | **String** |  | 

### Return type

[**ConsentedDocument**](ConsentedDocument.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1IndividualsConsentsConsentIdDocumentsGet**
```swift
    open class func v1IndividualsConsentsConsentIdDocumentsGet(consentId: String, completion: @escaping (_ data: [ConsentedDocument]?, _ error: Error?) -> Void)
```

Get Individual consented document by consent id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = "consentId_example" // String | 

// Get Individual consented document by consent id.
IndividualsAPI.v1IndividualsConsentsConsentIdDocumentsGet(consentId: consentId) { (response, error) in
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
 **consentId** | **String** |  | 

### Return type

[**[ConsentedDocument]**](ConsentedDocument.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1IndividualsConsentsConsentIdFinancialAccountsAccountIdGet**
```swift
    open class func v1IndividualsConsentsConsentIdFinancialAccountsAccountIdGet(consentId: String, accountId: String, completion: @escaping (_ data: FinancialAccount?, _ error: Error?) -> Void)
```

Get individual consented financial account details.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = "consentId_example" // String | 
let accountId = "accountId_example" // String | 

// Get individual consented financial account details.
IndividualsAPI.v1IndividualsConsentsConsentIdFinancialAccountsAccountIdGet(consentId: consentId, accountId: accountId) { (response, error) in
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
 **consentId** | **String** |  | 
 **accountId** | **String** |  | 

### Return type

[**FinancialAccount**](FinancialAccount.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1IndividualsConsentsConsentIdFinancialAccountsAccountIdTransactionsGet**
```swift
    open class func v1IndividualsConsentsConsentIdFinancialAccountsAccountIdTransactionsGet(consentId: String, accountId: String, fromDateTime: Date? = nil, toDateTime: Date? = nil, pageNo: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: PaginatedListOfFinancialAccountTransactions?, _ error: Error?) -> Void)
```

Get individual consented financial account transactions.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = "consentId_example" // String | 
let accountId = "accountId_example" // String | 
let fromDateTime = Date() // Date |  (optional)
let toDateTime = Date() // Date |  (optional)
let pageNo = 987 // Int |  (optional)
let pageSize = 987 // Int |  (optional)

// Get individual consented financial account transactions.
IndividualsAPI.v1IndividualsConsentsConsentIdFinancialAccountsAccountIdTransactionsGet(consentId: consentId, accountId: accountId, fromDateTime: fromDateTime, toDateTime: toDateTime, pageNo: pageNo, pageSize: pageSize) { (response, error) in
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
 **consentId** | **String** |  | 
 **accountId** | **String** |  | 
 **fromDateTime** | **Date** |  | [optional] 
 **toDateTime** | **Date** |  | [optional] 
 **pageNo** | **Int** |  | [optional] 
 **pageSize** | **Int** |  | [optional] 

### Return type

[**PaginatedListOfFinancialAccountTransactions**](PaginatedListOfFinancialAccountTransactions.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1IndividualsConsentsConsentIdFinancialAccountsGet**
```swift
    open class func v1IndividualsConsentsConsentIdFinancialAccountsGet(consentId: String, completion: @escaping (_ data: [FinancialAccount]?, _ error: Error?) -> Void)
```

Get all individual consented financial accounts.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = "consentId_example" // String | 

// Get all individual consented financial accounts.
IndividualsAPI.v1IndividualsConsentsConsentIdFinancialAccountsGet(consentId: consentId) { (response, error) in
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
 **consentId** | **String** |  | 

### Return type

[**[FinancialAccount]**](FinancialAccount.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1IndividualsConsentsConsentIdGet**
```swift
    open class func v1IndividualsConsentsConsentIdGet(consentId: String, completion: @escaping (_ data: ConsentDetails?, _ error: Error?) -> Void)
```

Get Individuals consent details by consent id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = "consentId_example" // String | 

// Get Individuals consent details by consent id.
IndividualsAPI.v1IndividualsConsentsConsentIdGet(consentId: consentId) { (response, error) in
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
 **consentId** | **String** |  | 

### Return type

[**ConsentDetails**](ConsentDetails.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1IndividualsConsentsConsentIdHealthFhirBundleGet**
```swift
    open class func v1IndividualsConsentsConsentIdHealthFhirBundleGet(consentId: String, completion: @escaping (_ data: FhirBundleany?, _ error: Error?) -> Void)
```

Get Individual consented Health Records by consent id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = "consentId_example" // String | 

// Get Individual consented Health Records by consent id.
IndividualsAPI.v1IndividualsConsentsConsentIdHealthFhirBundleGet(consentId: consentId) { (response, error) in
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
 **consentId** | **String** |  | 

### Return type

[**FhirBundleany**](FhirBundleany.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1IndividualsConsentsGet**
```swift
    open class func v1IndividualsConsentsGet(status: DataConsentStatus? = nil, fromDateTime: Date? = nil, toDateTime: Date? = nil, pageNo: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: PaginatedListOfConsents?, _ error: Error?) -> Void)
```

Get the paginated list of Individual consents.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let status = DataConsentStatus() // DataConsentStatus |  (optional)
let fromDateTime = Date() // Date |  (optional)
let toDateTime = Date() // Date |  (optional)
let pageNo = 987 // Int |  (optional)
let pageSize = 987 // Int |  (optional)

// Get the paginated list of Individual consents.
IndividualsAPI.v1IndividualsConsentsGet(status: status, fromDateTime: fromDateTime, toDateTime: toDateTime, pageNo: pageNo, pageSize: pageSize) { (response, error) in
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
 **fromDateTime** | **Date** |  | [optional] 
 **toDateTime** | **Date** |  | [optional] 
 **pageNo** | **Int** |  | [optional] 
 **pageSize** | **Int** |  | [optional] 

### Return type

[**PaginatedListOfConsents**](PaginatedListOfConsents.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1IndividualsDocumentsIssueIssueRequestIdUploadPost**
```swift
    open class func v1IndividualsDocumentsIssueIssueRequestIdUploadPost(issueRequestId: String, file: URL, completion: @escaping (_ data: UploadDocumentResponse?, _ error: Error?) -> Void)
```

Upload a document for issuance request of individual.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let issueRequestId = "issueRequestId_example" // String | 
let file = URL(string: "https://example.com")! // URL | 

// Upload a document for issuance request of individual.
IndividualsAPI.v1IndividualsDocumentsIssueIssueRequestIdUploadPost(issueRequestId: issueRequestId, file: file) { (response, error) in
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
 **issueRequestId** | **String** |  | 
 **file** | **URL** |  | 

### Return type

[**UploadDocumentResponse**](UploadDocumentResponse.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json; charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1IndividualsDocumentsIssuePost**
```swift
    open class func v1IndividualsDocumentsIssuePost(documentIssueRequest: DocumentIssueRequest, completion: @escaping (_ data: DocumentIssueRequestDetails?, _ error: Error?) -> Void)
```

Issue a new document to an individual user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let documentIssueRequest = DocumentIssueRequest(documentTypeId: "documentTypeId_example", identifier: "identifier_example", name: "name_example", description: "description_example", receiver: DocumentIssueRequest_receiver(countryIso2Code: "countryIso2Code_example", identifiers: [KeyValuePair(key: "key_example", value: "value_example")], identificationStrategy: IdentificationStrategy()), paymentRequest: DocumentIssueRequest_paymentRequest(identifier: "identifier_example", items: [PaymentOrderItem(name: "name_example", amount: 123)], currencyCode: "currencyCode_example", paymentUrl: "paymentUrl_example", description: "description_example", dueByUtc: Date()), issuedAtUtc: Date(), validFromUtc: Date(), expiresAtUtc: Date(), metadata: "TODO") // DocumentIssueRequest | 

// Issue a new document to an individual user.
IndividualsAPI.v1IndividualsDocumentsIssuePost(documentIssueRequest: documentIssueRequest) { (response, error) in
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
 **documentIssueRequest** | [**DocumentIssueRequest**](DocumentIssueRequest.md) |  | 

### Return type

[**DocumentIssueRequestDetails**](DocumentIssueRequestDetails.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

 - **Content-Type**: application/json; charset=utf-8
 - **Accept**: application/json; charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1IndividualsDocumentsIssuedDocumentIdGet**
```swift
    open class func v1IndividualsDocumentsIssuedDocumentIdGet(documentId: String, completion: @escaping (_ data: IssuedDocument?, _ error: Error?) -> Void)
```

Get issued document.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let documentId = "documentId_example" // String | 

// Get issued document.
IndividualsAPI.v1IndividualsDocumentsIssuedDocumentIdGet(documentId: documentId) { (response, error) in
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
 **documentId** | **String** |  | 

### Return type

[**IssuedDocument**](IssuedDocument.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1IndividualsDocumentsIssuedGet**
```swift
    open class func v1IndividualsDocumentsIssuedGet(documentTypeId: String, fromDateTime: Date? = nil, toDateTime: Date? = nil, pageNo: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: PaginatedListOfIssuedDocuments?, _ error: Error?) -> Void)
```

Get paginated list of issued documents of given document type.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let documentTypeId = "documentTypeId_example" // String | 
let fromDateTime = Date() // Date |  (optional)
let toDateTime = Date() // Date |  (optional)
let pageNo = 987 // Int |  (optional)
let pageSize = 987 // Int |  (optional)

// Get paginated list of issued documents of given document type.
IndividualsAPI.v1IndividualsDocumentsIssuedGet(documentTypeId: documentTypeId, fromDateTime: fromDateTime, toDateTime: toDateTime, pageNo: pageNo, pageSize: pageSize) { (response, error) in
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
 **documentTypeId** | **String** |  | 
 **fromDateTime** | **Date** |  | [optional] 
 **toDateTime** | **Date** |  | [optional] 
 **pageNo** | **Int** |  | [optional] 
 **pageSize** | **Int** |  | [optional] 

### Return type

[**PaginatedListOfIssuedDocuments**](PaginatedListOfIssuedDocuments.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1IndividualsDocumentsTypesGet**
```swift
    open class func v1IndividualsDocumentsTypesGet(pageNo: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: PaginatedListOfDocumentTypes?, _ error: Error?) -> Void)
```

Get paginated list of registered document types.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let pageNo = 987 // Int |  (optional)
let pageSize = 987 // Int |  (optional)

// Get paginated list of registered document types.
IndividualsAPI.v1IndividualsDocumentsTypesGet(pageNo: pageNo, pageSize: pageSize) { (response, error) in
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

### Return type

[**PaginatedListOfDocumentTypes**](PaginatedListOfDocumentTypes.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

