# DataConsentsAPI

All URIs are relative to *https://api.mydatamyconsent.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**downloadConsentedDocumentAnalysis**](DataConsentsAPI.md#downloadconsenteddocumentanalysis) | **GET** /v1/consents/{consentId}/documents/{documentId}/analysis | Get analysis of a consented document.
[**downloadIndividualConsentedDocumentById**](DataConsentsAPI.md#downloadindividualconsenteddocumentbyid) | **GET** /v1/consents/individuals/{consentId}/documents/{documentId}/download | Download individual consented document by document id.
[**downloadOrganizationConsentedDocumentById**](DataConsentsAPI.md#downloadorganizationconsenteddocumentbyid) | **GET** /v1/consents/organizations/{consentId}/documents/{documentId}/download | Download organization consent document based on document id.
[**getAllConsentedFinancialAccounts**](DataConsentsAPI.md#getallconsentedfinancialaccounts) | **GET** /v1/consents/individuals/{consentId}/financial-accounts | Get all individual consented financial accounts.
[**getConsentFinancialAccounts**](DataConsentsAPI.md#getconsentfinancialaccounts) | **GET** /v1/consents/organizations/{consentId}/financial-accounts | Get all organizational consented financial accounts.
[**getConsentedAccountById**](DataConsentsAPI.md#getconsentedaccountbyid) | **GET** /v1/consents/individuals/{consentId}/financial-accounts/{accountId} | Get individual consented financial account details based on account id.
[**getConsentedDocumentById**](DataConsentsAPI.md#getconsenteddocumentbyid) | **GET** /v1/consents/individuals/{consentId}/documents/{documentId} | Get individual consented document by document id.
[**getConsentedFinancialAccount**](DataConsentsAPI.md#getconsentedfinancialaccount) | **GET** /v1/consents/organizations/{consentId}/financial-accounts/{accountId} | Get organization consented financial account details based on account id.
[**getConsentedFinancialAccountInsights**](DataConsentsAPI.md#getconsentedfinancialaccountinsights) | **GET** /v1/consents/{consentId}/financial-accounts/{accountId}/insights | Get consented financial account insights.
[**getConsentedFinancialAccountTransactions**](DataConsentsAPI.md#getconsentedfinancialaccounttransactions) | **GET** /v1/consents/individuals/{consentId}/financial-accounts/{accountId}/transactions | Get individual consented financial account transactions of an individual based on accountId.
[**getConsents**](DataConsentsAPI.md#getconsents) | **GET** /v1/consents/individuals | Get the paginated list of individual data consents.
[**getIndividualConsentedDocuments**](DataConsentsAPI.md#getindividualconsenteddocuments) | **GET** /v1/consents/individuals/{consentId}/documents | Get individual consented documents by consent id.
[**getIndividualDataConsentById**](DataConsentsAPI.md#getindividualdataconsentbyid) | **GET** /v1/consents/individuals/{consentId} | Get individuals data consent details by consent id.
[**getOrgConsentedAccountTransactions**](DataConsentsAPI.md#getorgconsentedaccounttransactions) | **GET** /v1/consents/organizations/{consentId}/financial-accounts/{accountId}/transactions | Get organization consented financial account transactions of an individual based on accountId.
[**getOrganizationConsentedDocumentById**](DataConsentsAPI.md#getorganizationconsenteddocumentbyid) | **GET** /v1/consents/organizations/{consentId}/documents/{documentId} | Get organization consent document based on document id.
[**getOrganizationConsentedDocuments**](DataConsentsAPI.md#getorganizationconsenteddocuments) | **GET** /v1/consents/organizations/{consentId}/documents | Get organization consented documents by consent id.
[**getOrganizationDataConsentById**](DataConsentsAPI.md#getorganizationdataconsentbyid) | **GET** /v1/consents/organizations/{consentId} | Get organizations data consent details by consent id.
[**getOrganizationDataConsents**](DataConsentsAPI.md#getorganizationdataconsents) | **GET** /v1/consents/organizations | Get the paginated list of organization data consents.


# **downloadConsentedDocumentAnalysis**
```swift
    open class func downloadConsentedDocumentAnalysis(consentId: String, documentId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Get analysis of a consented document.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = "consentId_example" // String | Data consent id.
let documentId = "documentId_example" // String | Consented document Id.

// Get analysis of a consented document.
DataConsentsAPI.downloadConsentedDocumentAnalysis(consentId: consentId, documentId: documentId) { (response, error) in
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
 **consentId** | **String** | Data consent id. | 
 **documentId** | **String** | Consented document Id. | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadIndividualConsentedDocumentById**
```swift
    open class func downloadIndividualConsentedDocumentById(consentId: UUID, documentId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Download individual consented document by document id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = 987 // UUID | Individual data consent id.
let documentId = 987 // UUID | Consented document id.

// Download individual consented document by document id.
DataConsentsAPI.downloadIndividualConsentedDocumentById(consentId: consentId, documentId: documentId) { (response, error) in
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
 **consentId** | **UUID** | Individual data consent id. | 
 **documentId** | **UUID** | Consented document id. | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadOrganizationConsentedDocumentById**
```swift
    open class func downloadOrganizationConsentedDocumentById(consentId: UUID, documentId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Download organization consent document based on document id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = 987 // UUID | Organization data consent id.
let documentId = 987 // UUID | Organization consented document Id.

// Download organization consent document based on document id.
DataConsentsAPI.downloadOrganizationConsentedDocumentById(consentId: consentId, documentId: documentId) { (response, error) in
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
 **consentId** | **UUID** | Organization data consent id. | 
 **documentId** | **UUID** | Organization consented document Id. | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllConsentedFinancialAccounts**
```swift
    open class func getAllConsentedFinancialAccounts(consentId: UUID, completion: @escaping (_ data: DataConsentFinancialsDto?, _ error: Error?) -> Void)
```

Get all individual consented financial accounts.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = 987 // UUID | Consent id.

// Get all individual consented financial accounts.
DataConsentsAPI.getAllConsentedFinancialAccounts(consentId: consentId) { (response, error) in
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
 **consentId** | **UUID** | Consent id. | 

### Return type

[**DataConsentFinancialsDto**](DataConsentFinancialsDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getConsentFinancialAccounts**
```swift
    open class func getConsentFinancialAccounts(consentId: UUID, completion: @escaping (_ data: DataConsentFinancialsDto?, _ error: Error?) -> Void)
```

Get all organizational consented financial accounts.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = 987 // UUID | Consent id.

// Get all organizational consented financial accounts.
DataConsentsAPI.getConsentFinancialAccounts(consentId: consentId) { (response, error) in
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
 **consentId** | **UUID** | Consent id. | 

### Return type

[**DataConsentFinancialsDto**](DataConsentFinancialsDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getConsentedAccountById**
```swift
    open class func getConsentedAccountById(consentId: UUID, accountId: UUID, completion: @escaping (_ data: FinancialAccount?, _ error: Error?) -> Void)
```

Get individual consented financial account details based on account id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = 987 // UUID | Consent id.
let accountId = 987 // UUID | Account id.

// Get individual consented financial account details based on account id.
DataConsentsAPI.getConsentedAccountById(consentId: consentId, accountId: accountId) { (response, error) in
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
 **consentId** | **UUID** | Consent id. | 
 **accountId** | **UUID** | Account id. | 

### Return type

[**FinancialAccount**](FinancialAccount.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getConsentedDocumentById**
```swift
    open class func getConsentedDocumentById(consentId: UUID, documentId: UUID, completion: @escaping (_ data: IndividualDataConsentDocument?, _ error: Error?) -> Void)
```

Get individual consented document by document id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = 987 // UUID | Individual data consent id.
let documentId = 987 // UUID | Consented document id.

// Get individual consented document by document id.
DataConsentsAPI.getConsentedDocumentById(consentId: consentId, documentId: documentId) { (response, error) in
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
 **consentId** | **UUID** | Individual data consent id. | 
 **documentId** | **UUID** | Consented document id. | 

### Return type

[**IndividualDataConsentDocument**](IndividualDataConsentDocument.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getConsentedFinancialAccount**
```swift
    open class func getConsentedFinancialAccount(consentId: UUID, accountId: UUID, completion: @escaping (_ data: OrganizationFinancialAccountDto?, _ error: Error?) -> Void)
```

Get organization consented financial account details based on account id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = 987 // UUID | Consent id.
let accountId = 987 // UUID | Account id.

// Get organization consented financial account details based on account id.
DataConsentsAPI.getConsentedFinancialAccount(consentId: consentId, accountId: accountId) { (response, error) in
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
 **consentId** | **UUID** | Consent id. | 
 **accountId** | **UUID** | Account id. | 

### Return type

[**OrganizationFinancialAccountDto**](OrganizationFinancialAccountDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getConsentedFinancialAccountInsights**
```swift
    open class func getConsentedFinancialAccountInsights(consentId: String, accountId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Get consented financial account insights.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = "consentId_example" // String | 
let accountId = "accountId_example" // String | 

// Get consented financial account insights.
DataConsentsAPI.getConsentedFinancialAccountInsights(consentId: consentId, accountId: accountId) { (response, error) in
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

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getConsentedFinancialAccountTransactions**
```swift
    open class func getConsentedFinancialAccountTransactions(consentId: UUID, accountId: UUID, filters: String? = nil, fromDateTimeUtc: Date? = nil, toDateTimeUtc: Date? = nil, pageNo: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: UserAccountFinancialTransactionsDtoPaginatedList?, _ error: Error?) -> Void)
```

Get individual consented financial account transactions of an individual based on accountId.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = 987 // UUID | Consent id.
let accountId = 987 // UUID | Account id.
let filters = "filters_example" // String | Filters. (optional)
let fromDateTimeUtc = Date() // Date | From date time in utc timezone. (optional)
let toDateTimeUtc = Date() // Date | Til date time in utc timezone. (optional)
let pageNo = 987 // Int | Page number. (optional) (default to 10)
let pageSize = 987 // Int | Number of items to return. (optional) (default to 25)

// Get individual consented financial account transactions of an individual based on accountId.
DataConsentsAPI.getConsentedFinancialAccountTransactions(consentId: consentId, accountId: accountId, filters: filters, fromDateTimeUtc: fromDateTimeUtc, toDateTimeUtc: toDateTimeUtc, pageNo: pageNo, pageSize: pageSize) { (response, error) in
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
 **consentId** | **UUID** | Consent id. | 
 **accountId** | **UUID** | Account id. | 
 **filters** | **String** | Filters. | [optional] 
 **fromDateTimeUtc** | **Date** | From date time in utc timezone. | [optional] 
 **toDateTimeUtc** | **Date** | Til date time in utc timezone. | [optional] 
 **pageNo** | **Int** | Page number. | [optional] [default to 10]
 **pageSize** | **Int** | Number of items to return. | [optional] [default to 25]

### Return type

[**UserAccountFinancialTransactionsDtoPaginatedList**](UserAccountFinancialTransactionsDtoPaginatedList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getConsents**
```swift
    open class func getConsents(status: DataConsentStatus? = nil, fromDateTime: Date? = nil, toDateTime: Date? = nil, pageNo: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: IndividualDataConsentDetailsPaginatedList?, _ error: Error?) -> Void)
```

Get the paginated list of individual data consents.

GetIndividualDataConsents

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let status = DataConsentStatus() // DataConsentStatus | Data consent status MyDataMyConsent.Domain.Entities.ConsentAggregate.Enums.DataConsentStatus. (optional)
let fromDateTime = Date() // Date | From datetime in UTC timezone. (optional)
let toDateTime = Date() // Date | To datetime in UTC timezone. (optional)
let pageNo = 987 // Int | Page number. (optional) (default to 1)
let pageSize = 987 // Int | Number of items to return. (optional) (default to 25)

// Get the paginated list of individual data consents.
DataConsentsAPI.getConsents(status: status, fromDateTime: fromDateTime, toDateTime: toDateTime, pageNo: pageNo, pageSize: pageSize) { (response, error) in
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
 **status** | [**DataConsentStatus**](.md) | Data consent status MyDataMyConsent.Domain.Entities.ConsentAggregate.Enums.DataConsentStatus. | [optional] 
 **fromDateTime** | **Date** | From datetime in UTC timezone. | [optional] 
 **toDateTime** | **Date** | To datetime in UTC timezone. | [optional] 
 **pageNo** | **Int** | Page number. | [optional] [default to 1]
 **pageSize** | **Int** | Number of items to return. | [optional] [default to 25]

### Return type

[**IndividualDataConsentDetailsPaginatedList**](IndividualDataConsentDetailsPaginatedList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIndividualConsentedDocuments**
```swift
    open class func getIndividualConsentedDocuments(consentId: UUID, completion: @escaping (_ data: [IndividualDataConsentDocument]?, _ error: Error?) -> Void)
```

Get individual consented documents by consent id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = 987 // UUID | Individual data consent id.

// Get individual consented documents by consent id.
DataConsentsAPI.getIndividualConsentedDocuments(consentId: consentId) { (response, error) in
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
 **consentId** | **UUID** | Individual data consent id. | 

### Return type

[**[IndividualDataConsentDocument]**](IndividualDataConsentDocument.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIndividualDataConsentById**
```swift
    open class func getIndividualDataConsentById(consentId: UUID, completion: @escaping (_ data: GetIndividualDataConsentById200?, _ error: Error?) -> Void)
```

Get individuals data consent details by consent id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = 987 // UUID | Individual data consent id.

// Get individuals data consent details by consent id.
DataConsentsAPI.getIndividualDataConsentById(consentId: consentId) { (response, error) in
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
 **consentId** | **UUID** | Individual data consent id. | 

### Return type

[**GetIndividualDataConsentById200**](GetIndividualDataConsentById200.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrgConsentedAccountTransactions**
```swift
    open class func getOrgConsentedAccountTransactions(consentId: UUID, accountId: UUID, filters: String? = nil, fromDateTimeUtc: Date? = nil, toDateTimeUtc: Date? = nil, pageNo: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: OrganizationFinancialTransactionsDtoPaginatedList?, _ error: Error?) -> Void)
```

Get organization consented financial account transactions of an individual based on accountId.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = 987 // UUID | Consent id.
let accountId = 987 // UUID | Account id.
let filters = "filters_example" // String | Filters. (optional)
let fromDateTimeUtc = Date() // Date | From date time in utc timezone. (optional)
let toDateTimeUtc = Date() // Date | Til date time in utc timezone. (optional)
let pageNo = 987 // Int | Page number. (optional) (default to 1)
let pageSize = 987 // Int | Number of items to return. (optional) (default to 25)

// Get organization consented financial account transactions of an individual based on accountId.
DataConsentsAPI.getOrgConsentedAccountTransactions(consentId: consentId, accountId: accountId, filters: filters, fromDateTimeUtc: fromDateTimeUtc, toDateTimeUtc: toDateTimeUtc, pageNo: pageNo, pageSize: pageSize) { (response, error) in
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
 **consentId** | **UUID** | Consent id. | 
 **accountId** | **UUID** | Account id. | 
 **filters** | **String** | Filters. | [optional] 
 **fromDateTimeUtc** | **Date** | From date time in utc timezone. | [optional] 
 **toDateTimeUtc** | **Date** | Til date time in utc timezone. | [optional] 
 **pageNo** | **Int** | Page number. | [optional] [default to 1]
 **pageSize** | **Int** | Number of items to return. | [optional] [default to 25]

### Return type

[**OrganizationFinancialTransactionsDtoPaginatedList**](OrganizationFinancialTransactionsDtoPaginatedList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrganizationConsentedDocumentById**
```swift
    open class func getOrganizationConsentedDocumentById(consentId: UUID, documentId: UUID, completion: @escaping (_ data: OrganizationDataConsentDocument?, _ error: Error?) -> Void)
```

Get organization consent document based on document id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = 987 // UUID | Organization data consent id.
let documentId = 987 // UUID | Organization consented document Id.

// Get organization consent document based on document id.
DataConsentsAPI.getOrganizationConsentedDocumentById(consentId: consentId, documentId: documentId) { (response, error) in
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
 **consentId** | **UUID** | Organization data consent id. | 
 **documentId** | **UUID** | Organization consented document Id. | 

### Return type

[**OrganizationDataConsentDocument**](OrganizationDataConsentDocument.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrganizationConsentedDocuments**
```swift
    open class func getOrganizationConsentedDocuments(consentId: UUID, completion: @escaping (_ data: [OrganizationDataConsentDocument]?, _ error: Error?) -> Void)
```

Get organization consented documents by consent id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = 987 // UUID | Organization data consent id.

// Get organization consented documents by consent id.
DataConsentsAPI.getOrganizationConsentedDocuments(consentId: consentId) { (response, error) in
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
 **consentId** | **UUID** | Organization data consent id. | 

### Return type

[**[OrganizationDataConsentDocument]**](OrganizationDataConsentDocument.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrganizationDataConsentById**
```swift
    open class func getOrganizationDataConsentById(consentId: UUID, completion: @escaping (_ data: GetOrganizationDataConsentById200?, _ error: Error?) -> Void)
```

Get organizations data consent details by consent id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = 987 // UUID | Organization data consent id.

// Get organizations data consent details by consent id.
DataConsentsAPI.getOrganizationDataConsentById(consentId: consentId) { (response, error) in
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
 **consentId** | **UUID** | Organization data consent id. | 

### Return type

[**GetOrganizationDataConsentById200**](GetOrganizationDataConsentById200.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrganizationDataConsents**
```swift
    open class func getOrganizationDataConsents(status: DataConsentStatus? = nil, fromDateTime: Date? = nil, toDateTime: Date? = nil, pageNo: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: OrganizationDataConsentDetailsPaginatedList?, _ error: Error?) -> Void)
```

Get the paginated list of organization data consents.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let status = DataConsentStatus() // DataConsentStatus | Data consent status MyDataMyConsent.Domain.Entities.ConsentAggregate.Enums.DataConsentStatus. (optional)
let fromDateTime = Date() // Date | From datetime in UTC timezone. (optional)
let toDateTime = Date() // Date | To datetime in UTC timezone. (optional)
let pageNo = 987 // Int | Page number. (optional) (default to 1)
let pageSize = 987 // Int | Number of items to return. (optional) (default to 25)

// Get the paginated list of organization data consents.
DataConsentsAPI.getOrganizationDataConsents(status: status, fromDateTime: fromDateTime, toDateTime: toDateTime, pageNo: pageNo, pageSize: pageSize) { (response, error) in
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
 **status** | [**DataConsentStatus**](.md) | Data consent status MyDataMyConsent.Domain.Entities.ConsentAggregate.Enums.DataConsentStatus. | [optional] 
 **fromDateTime** | **Date** | From datetime in UTC timezone. | [optional] 
 **toDateTime** | **Date** | To datetime in UTC timezone. | [optional] 
 **pageNo** | **Int** | Page number. | [optional] [default to 1]
 **pageSize** | **Int** | Number of items to return. | [optional] [default to 25]

### Return type

[**OrganizationDataConsentDetailsPaginatedList**](OrganizationDataConsentDetailsPaginatedList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

