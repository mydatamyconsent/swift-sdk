# OrganizationsAPI

All URIs are relative to *https://api.mydatamyconsent.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1OrganizationsConsentRequestsGet**](OrganizationsAPI.md#v1organizationsconsentrequestsget) | **GET** /v1/organizations/consent-requests | Get all consent requests sent to Organizations.
[**v1OrganizationsConsentRequestsPost**](OrganizationsAPI.md#v1organizationsconsentrequestspost) | **POST** /v1/organizations/consent-requests | Create consent request for an Organization.
[**v1OrganizationsConsentRequestsRequestIdCancelPut**](OrganizationsAPI.md#v1organizationsconsentrequestsrequestidcancelput) | **PUT** /v1/organizations/consent-requests/{request_id}/cancel | Cancel the  Organization data request by id.
[**v1OrganizationsConsentRequestsRequestIdGet**](OrganizationsAPI.md#v1organizationsconsentrequestsrequestidget) | **GET** /v1/organizations/consent-requests/{request_id} | Get Organization data request by id.
[**v1OrganizationsConsentTemplatesGet**](OrganizationsAPI.md#v1organizationsconsenttemplatesget) | **GET** /v1/organizations/consent-templates | Get the paginated list of organization consent templates.
[**v1OrganizationsConsentTemplatesTemplateIdGet**](OrganizationsAPI.md#v1organizationsconsenttemplatestemplateidget) | **GET** /v1/organizations/consent-templates/{template_id} | Get Organization consent template details by consent id.
[**v1OrganizationsConsentsConsentIdDocumentsDocumentIdDownloadGet**](OrganizationsAPI.md#v1organizationsconsentsconsentiddocumentsdocumentiddownloadget) | **GET** /v1/organizations/consents/{consent_id}/documents/{document_id}/download | Download Organization consent document by document id.
[**v1OrganizationsConsentsConsentIdDocumentsDocumentIdGet**](OrganizationsAPI.md#v1organizationsconsentsconsentiddocumentsdocumentidget) | **GET** /v1/organizations/consents/{consent_id}/documents/{document_id} | Get Organization consent document based on document id and consent id.
[**v1OrganizationsConsentsConsentIdDocumentsGet**](OrganizationsAPI.md#v1organizationsconsentsconsentiddocumentsget) | **GET** /v1/organizations/consents/{consent_id}/documents | Get Organization consent document by consent id.
[**v1OrganizationsConsentsConsentIdFinancialAccountsAccountIdGet**](OrganizationsAPI.md#v1organizationsconsentsconsentidfinancialaccountsaccountidget) | **GET** /v1/organizations/consents/{consent_id}/financial-accounts/{account_id} | Get organization consented financial account details.
[**v1OrganizationsConsentsConsentIdFinancialAccountsAccountIdTransactionsGet**](OrganizationsAPI.md#v1organizationsconsentsconsentidfinancialaccountsaccountidtransactionsget) | **GET** /v1/organizations/consents/{consent_id}/financial-accounts/{account_id}/transactions | Get organization consented financial account transactions.
[**v1OrganizationsConsentsConsentIdFinancialAccountsGet**](OrganizationsAPI.md#v1organizationsconsentsconsentidfinancialaccountsget) | **GET** /v1/organizations/consents/{consent_id}/financial-accounts | Get all organization consented financial accounts.
[**v1OrganizationsConsentsConsentIdGet**](OrganizationsAPI.md#v1organizationsconsentsconsentidget) | **GET** /v1/organizations/consents/{consent_id} | Get Organization consent request details by consent id.
[**v1OrganizationsConsentsGet**](OrganizationsAPI.md#v1organizationsconsentsget) | **GET** /v1/organizations/consents | Get the paginated list of Organization consents.
[**v1OrganizationsDocumentsIssuePost**](OrganizationsAPI.md#v1organizationsdocumentsissuepost) | **POST** /v1/organizations/documents/issue | Issue a new document to an organization.
[**v1OrganizationsDocumentsIssueUploadIssueRequestIdPost**](OrganizationsAPI.md#v1organizationsdocumentsissueuploadissuerequestidpost) | **POST** /v1/organizations/documents/issue/upload/{issue_request_id} | Upload a document for issuance request of Organization.
[**v1OrganizationsDocumentsIssuedDocumentIdGet**](OrganizationsAPI.md#v1organizationsdocumentsissueddocumentidget) | **GET** /v1/organizations/documents/issued/{document_id} | Get issued document.
[**v1OrganizationsDocumentsIssuedGet**](OrganizationsAPI.md#v1organizationsdocumentsissuedget) | **GET** /v1/organizations/documents/issued | Get paginated list of issued documents of given document type.
[**v1OrganizationsDocumentsTypesGet**](OrganizationsAPI.md#v1organizationsdocumentstypesget) | **GET** /v1/organizations/documents/types | Get paginated list of registered document types.


# **v1OrganizationsConsentRequestsGet**
```swift
    open class func v1OrganizationsConsentRequestsGet(status: DataConsentStatus? = nil, fromDateTime: Date? = nil, toDateTime: Date? = nil, pageNo: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: PaginatedListOfOrganizationConsentRequestDetailss?, _ error: Error?) -> Void)
```

Get all consent requests sent to Organizations.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let status = DataConsentStatus() // DataConsentStatus |  (optional)
let fromDateTime = Date() // Date |  (optional)
let toDateTime = Date() // Date |  (optional)
let pageNo = 987 // Int |  (optional)
let pageSize = 987 // Int |  (optional)

// Get all consent requests sent to Organizations.
OrganizationsAPI.v1OrganizationsConsentRequestsGet(status: status, fromDateTime: fromDateTime, toDateTime: toDateTime, pageNo: pageNo, pageSize: pageSize) { (response, error) in
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

[**PaginatedListOfOrganizationConsentRequestDetailss**](PaginatedListOfOrganizationConsentRequestDetailss.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1OrganizationsConsentRequestsPost**
```swift
    open class func v1OrganizationsConsentRequestsPost(createConsentRequest: CreateConsentRequest, completion: @escaping (_ data: OrganizationConsentRequestDetails?, _ error: Error?) -> Void)
```

Create consent request for an Organization.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let createConsentRequest = CreateConsentRequest(consentTemplateId: "consentTemplateId_example", receiver: ConsentRequestReceiver(countryIso2Code: "countryIso2Code_example", identifiers: [KeyValuePair(key: "key_example", value: "value_example")], identificationStrategy: IdentificationStrategy())) // CreateConsentRequest | 

// Create consent request for an Organization.
OrganizationsAPI.v1OrganizationsConsentRequestsPost(createConsentRequest: createConsentRequest) { (response, error) in
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

[**OrganizationConsentRequestDetails**](OrganizationConsentRequestDetails.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1OrganizationsConsentRequestsRequestIdCancelPut**
```swift
    open class func v1OrganizationsConsentRequestsRequestIdCancelPut(requestId: String, completion: @escaping (_ data: Bool?, _ error: Error?) -> Void)
```

Cancel the  Organization data request by id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let requestId = "requestId_example" // String | 

// Cancel the  Organization data request by id.
OrganizationsAPI.v1OrganizationsConsentRequestsRequestIdCancelPut(requestId: requestId) { (response, error) in
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1OrganizationsConsentRequestsRequestIdGet**
```swift
    open class func v1OrganizationsConsentRequestsRequestIdGet(requestId: String, completion: @escaping (_ data: ConsentRequest?, _ error: Error?) -> Void)
```

Get Organization data request by id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let requestId = "requestId_example" // String | 

// Get Organization data request by id.
OrganizationsAPI.v1OrganizationsConsentRequestsRequestIdGet(requestId: requestId) { (response, error) in
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1OrganizationsConsentTemplatesGet**
```swift
    open class func v1OrganizationsConsentTemplatesGet(pageNo: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: PaginatedListOfConsentRequestTemplates?, _ error: Error?) -> Void)
```

Get the paginated list of organization consent templates.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let pageNo = 987 // Int |  (optional)
let pageSize = 987 // Int |  (optional)

// Get the paginated list of organization consent templates.
OrganizationsAPI.v1OrganizationsConsentTemplatesGet(pageNo: pageNo, pageSize: pageSize) { (response, error) in
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1OrganizationsConsentTemplatesTemplateIdGet**
```swift
    open class func v1OrganizationsConsentTemplatesTemplateIdGet(templateId: String, completion: @escaping (_ data: OrganizationConsentRequestTemplateDetails?, _ error: Error?) -> Void)
```

Get Organization consent template details by consent id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let templateId = "templateId_example" // String | 

// Get Organization consent template details by consent id.
OrganizationsAPI.v1OrganizationsConsentTemplatesTemplateIdGet(templateId: templateId) { (response, error) in
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

[**OrganizationConsentRequestTemplateDetails**](OrganizationConsentRequestTemplateDetails.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1OrganizationsConsentsConsentIdDocumentsDocumentIdDownloadGet**
```swift
    open class func v1OrganizationsConsentsConsentIdDocumentsDocumentIdDownloadGet(consentId: String, documentId: String, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```

Download Organization consent document by document id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = "consentId_example" // String | 
let documentId = "documentId_example" // String | 

// Download Organization consent document by document id.
OrganizationsAPI.v1OrganizationsConsentsConsentIdDocumentsDocumentIdDownloadGet(consentId: consentId, documentId: documentId) { (response, error) in
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
 - **Accept**: application/octet-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1OrganizationsConsentsConsentIdDocumentsDocumentIdGet**
```swift
    open class func v1OrganizationsConsentsConsentIdDocumentsDocumentIdGet(consentId: String, documentId: String, completion: @escaping (_ data: ConsentedDocument?, _ error: Error?) -> Void)
```

Get Organization consent document based on document id and consent id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = "consentId_example" // String | 
let documentId = "documentId_example" // String | 

// Get Organization consent document based on document id and consent id.
OrganizationsAPI.v1OrganizationsConsentsConsentIdDocumentsDocumentIdGet(consentId: consentId, documentId: documentId) { (response, error) in
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1OrganizationsConsentsConsentIdDocumentsGet**
```swift
    open class func v1OrganizationsConsentsConsentIdDocumentsGet(consentId: String, completion: @escaping (_ data: [ConsentedDocument]?, _ error: Error?) -> Void)
```

Get Organization consent document by consent id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = "consentId_example" // String | 

// Get Organization consent document by consent id.
OrganizationsAPI.v1OrganizationsConsentsConsentIdDocumentsGet(consentId: consentId) { (response, error) in
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1OrganizationsConsentsConsentIdFinancialAccountsAccountIdGet**
```swift
    open class func v1OrganizationsConsentsConsentIdFinancialAccountsAccountIdGet(consentId: String, accountId: String, completion: @escaping (_ data: FinancialAccount?, _ error: Error?) -> Void)
```

Get organization consented financial account details.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = "consentId_example" // String | 
let accountId = "accountId_example" // String | 

// Get organization consented financial account details.
OrganizationsAPI.v1OrganizationsConsentsConsentIdFinancialAccountsAccountIdGet(consentId: consentId, accountId: accountId) { (response, error) in
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1OrganizationsConsentsConsentIdFinancialAccountsAccountIdTransactionsGet**
```swift
    open class func v1OrganizationsConsentsConsentIdFinancialAccountsAccountIdTransactionsGet(consentId: String, accountId: String, filters: String? = nil, fromDateTime: String? = nil, toDateTime: String? = nil, pageNo: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: PaginatedListOfFinancialAccountTransactions?, _ error: Error?) -> Void)
```

Get organization consented financial account transactions.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = "consentId_example" // String | 
let accountId = "accountId_example" // String | 
let filters = "filters_example" // String |  (optional)
let fromDateTime = "fromDateTime_example" // String |  (optional)
let toDateTime = "toDateTime_example" // String |  (optional)
let pageNo = 987 // Int |  (optional)
let pageSize = 987 // Int |  (optional)

// Get organization consented financial account transactions.
OrganizationsAPI.v1OrganizationsConsentsConsentIdFinancialAccountsAccountIdTransactionsGet(consentId: consentId, accountId: accountId, filters: filters, fromDateTime: fromDateTime, toDateTime: toDateTime, pageNo: pageNo, pageSize: pageSize) { (response, error) in
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
 **filters** | **String** |  | [optional] 
 **fromDateTime** | **String** |  | [optional] 
 **toDateTime** | **String** |  | [optional] 
 **pageNo** | **Int** |  | [optional] 
 **pageSize** | **Int** |  | [optional] 

### Return type

[**PaginatedListOfFinancialAccountTransactions**](PaginatedListOfFinancialAccountTransactions.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1OrganizationsConsentsConsentIdFinancialAccountsGet**
```swift
    open class func v1OrganizationsConsentsConsentIdFinancialAccountsGet(consentId: String, completion: @escaping (_ data: [FinancialAccount]?, _ error: Error?) -> Void)
```

Get all organization consented financial accounts.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = "consentId_example" // String | 

// Get all organization consented financial accounts.
OrganizationsAPI.v1OrganizationsConsentsConsentIdFinancialAccountsGet(consentId: consentId) { (response, error) in
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1OrganizationsConsentsConsentIdGet**
```swift
    open class func v1OrganizationsConsentsConsentIdGet(consentId: String, completion: @escaping (_ data: ConsentDetails?, _ error: Error?) -> Void)
```

Get Organization consent request details by consent id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = "consentId_example" // String | 

// Get Organization consent request details by consent id.
OrganizationsAPI.v1OrganizationsConsentsConsentIdGet(consentId: consentId) { (response, error) in
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1OrganizationsConsentsGet**
```swift
    open class func v1OrganizationsConsentsGet(status: DataConsentStatus? = nil, fromDateTime: Date? = nil, toDateTime: Date? = nil, pageNo: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: PaginatedListOfConsents?, _ error: Error?) -> Void)
```

Get the paginated list of Organization consents.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let status = DataConsentStatus() // DataConsentStatus |  (optional)
let fromDateTime = Date() // Date |  (optional)
let toDateTime = Date() // Date |  (optional)
let pageNo = 987 // Int |  (optional)
let pageSize = 987 // Int |  (optional)

// Get the paginated list of Organization consents.
OrganizationsAPI.v1OrganizationsConsentsGet(status: status, fromDateTime: fromDateTime, toDateTime: toDateTime, pageNo: pageNo, pageSize: pageSize) { (response, error) in
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1OrganizationsDocumentsIssuePost**
```swift
    open class func v1OrganizationsDocumentsIssuePost(documentIssueRequest: DocumentIssueRequest, completion: @escaping (_ data: DocumentIssueRequestDetails?, _ error: Error?) -> Void)
```

Issue a new document to an organization.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let documentIssueRequest = DocumentIssueRequest(documentTypeId: "documentTypeId_example", identifier: "identifier_example", description: "description_example", receiver: DocumentIssueRequest_receiver(countryIso2Code: "countryIso2Code_example", identifiers: [KeyValuePair(key: "key_example", value: "value_example")], identificationStrategy: IdentificationStrategy()), paymentRequest: DocumentIssueRequest_paymentRequest(identifier: "identifier_example", items: [PaymentOrderItem(name: "name_example", amount: 123)], currencyCode: "currencyCode_example", paymentUrl: "paymentUrl_example", description: "description_example", dueByUtc: Date()), issuedAtUtc: Date(), validFromUtc: Date(), expiresAtUtc: Date(), metadata: "TODO") // DocumentIssueRequest | 

// Issue a new document to an organization.
OrganizationsAPI.v1OrganizationsDocumentsIssuePost(documentIssueRequest: documentIssueRequest) { (response, error) in
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

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1OrganizationsDocumentsIssueUploadIssueRequestIdPost**
```swift
    open class func v1OrganizationsDocumentsIssueUploadIssueRequestIdPost(issueRequestId: String, file: URL, completion: @escaping (_ data: UploadDocumentResponse?, _ error: Error?) -> Void)
```

Upload a document for issuance request of Organization.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let issueRequestId = "issueRequestId_example" // String | 
let file = URL(string: "https://example.com")! // URL | 

// Upload a document for issuance request of Organization.
OrganizationsAPI.v1OrganizationsDocumentsIssueUploadIssueRequestIdPost(issueRequestId: issueRequestId, file: file) { (response, error) in
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1OrganizationsDocumentsIssuedDocumentIdGet**
```swift
    open class func v1OrganizationsDocumentsIssuedDocumentIdGet(documentId: String, completion: @escaping (_ data: IssuedDocument?, _ error: Error?) -> Void)
```

Get issued document.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let documentId = "documentId_example" // String | 

// Get issued document.
OrganizationsAPI.v1OrganizationsDocumentsIssuedDocumentIdGet(documentId: documentId) { (response, error) in
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1OrganizationsDocumentsIssuedGet**
```swift
    open class func v1OrganizationsDocumentsIssuedGet(documentTypeId: String, fromDateTime: Date? = nil, toDateTime: Date? = nil, pageNo: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: PaginatedListOfIssuedDocuments?, _ error: Error?) -> Void)
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
OrganizationsAPI.v1OrganizationsDocumentsIssuedGet(documentTypeId: documentTypeId, fromDateTime: fromDateTime, toDateTime: toDateTime, pageNo: pageNo, pageSize: pageSize) { (response, error) in
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1OrganizationsDocumentsTypesGet**
```swift
    open class func v1OrganizationsDocumentsTypesGet(pageNo: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: PaginatedListOfDocumentTypes?, _ error: Error?) -> Void)
```

Get paginated list of registered document types.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let pageNo = 987 // Int |  (optional)
let pageSize = 987 // Int |  (optional)

// Get paginated list of registered document types.
OrganizationsAPI.v1OrganizationsDocumentsTypesGet(pageNo: pageNo, pageSize: pageSize) { (response, error) in
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

