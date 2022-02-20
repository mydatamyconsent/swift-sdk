# DataConsentsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**downloadConsentedDocumentById**](DataConsentsAPI.md#downloadconsenteddocumentbyid) | **GET** /v1/consents/individuals/{consentId}/documents/{documentId}/download | Download a individuals consented document.
[**downloadOrgConsentedDocumentById**](DataConsentsAPI.md#downloadorgconsenteddocumentbyid) | **GET** /v1/consents/organizations/{consentId}/documents/{documentId}/download | Download a organizations consented document.
[**getAllConsentedDocuments**](DataConsentsAPI.md#getallconsenteddocuments) | **GET** /v1/consents/individuals/{consentId}/documents | Get the individual documents based on ConsentId.
[**getAllConsentedFinancialAccounts**](DataConsentsAPI.md#getallconsentedfinancialaccounts) | **GET** /v1/consents/individuals/{consentId}/accounts | Get all individual consented financial accounts.
[**getAllOrganizationConsentedAccounts**](DataConsentsAPI.md#getallorganizationconsentedaccounts) | **GET** /v1/consents/organizations/{consentId}/accounts | Get all organizational consented financial accounts.
[**getAllOrganizationConsentedDocuments**](DataConsentsAPI.md#getallorganizationconsenteddocuments) | **GET** /v1/consents/organizations/{consentId}/documents | Get the organization documents based on ConsentId.
[**getConsentDetailsById**](DataConsentsAPI.md#getconsentdetailsbyid) | **GET** /v1/consents/individuals/{consentId} | Get all individuals consent details by consent id.
[**getConsentedAccountById**](DataConsentsAPI.md#getconsentedaccountbyid) | **GET** /v1/consents/individuals/{consentId}/accounts/{accountId} | Get individual consented financial account details based on account id.
[**getConsentedDocumentById**](DataConsentsAPI.md#getconsenteddocumentbyid) | **GET** /v1/consents/individuals/{consentId}/documents/{documentId} | Get individuals consent document based on document id.
[**getConsentedFinancialAccount**](DataConsentsAPI.md#getconsentedfinancialaccount) | **GET** /v1/consents/organizations/{consentId}/accounts/{accountId} | Get organization consented financial account details based on account id.
[**getConsentedFinancialAccountTransactions**](DataConsentsAPI.md#getconsentedfinancialaccounttransactions) | **GET** /v1/consents/individuals/{consentId}/accounts/{accountId}/transactions | Get individual consented financial account transactions of an individual based on accountId.
[**getConsents**](DataConsentsAPI.md#getconsents) | **GET** /v1/consents/individuals | Get the list of Consents Sent to Individuals.
[**getConsentsForOrganizations**](DataConsentsAPI.md#getconsentsfororganizations) | **GET** /v1/consents/organizations | Get the list of data consents sent for organizations.
[**getOrgConsentedAccountTransactions**](DataConsentsAPI.md#getorgconsentedaccounttransactions) | **GET** /v1/consents/organizations/{consentId}/accounts/{accountId}/transactions | Get organization consented financial account transactions of an individual based on accountId.
[**getOrganizationConsentDetailsById**](DataConsentsAPI.md#getorganizationconsentdetailsbyid) | **GET** /v1/consents/organizations/{consentId} | Get all organization consent details by consent id.
[**getOrganizationConsentedDocumentById**](DataConsentsAPI.md#getorganizationconsenteddocumentbyid) | **GET** /v1/consents/organizations/{consentId}/documents/{documentId} | Get organization consent document based on document id.


# **downloadConsentedDocumentById**
```swift
    open class func downloadConsentedDocumentById(consentId: UUID, documentId: UUID, completion: @escaping (_ data: UserDocumentDownloadDto?, _ error: Error?) -> Void)
```

Download a individuals consented document.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = 987 // UUID | Consent id.
let documentId = 987 // UUID | Document id.

// Download a individuals consented document.
DataConsentsAPI.downloadConsentedDocumentById(consentId: consentId, documentId: documentId) { (response, error) in
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
 **documentId** | **UUID** | Document id. | 

### Return type

[**UserDocumentDownloadDto**](UserDocumentDownloadDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadOrgConsentedDocumentById**
```swift
    open class func downloadOrgConsentedDocumentById(consentId: UUID, documentId: UUID, completion: @escaping (_ data: OrganizationDocumentDownloadDto?, _ error: Error?) -> Void)
```

Download a organizations consented document.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = 987 // UUID | Consent id.
let documentId = 987 // UUID | Document id.

// Download a organizations consented document.
DataConsentsAPI.downloadOrgConsentedDocumentById(consentId: consentId, documentId: documentId) { (response, error) in
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
 **documentId** | **UUID** | Document id. | 

### Return type

[**OrganizationDocumentDownloadDto**](OrganizationDocumentDownloadDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllConsentedDocuments**
```swift
    open class func getAllConsentedDocuments(consentId: UUID, completion: @escaping (_ data: DataConsentDocumentsDto?, _ error: Error?) -> Void)
```

Get the individual documents based on ConsentId.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = 987 // UUID | Consent id.

// Get the individual documents based on ConsentId.
DataConsentsAPI.getAllConsentedDocuments(consentId: consentId) { (response, error) in
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

[**DataConsentDocumentsDto**](DataConsentDocumentsDto.md)

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

# **getAllOrganizationConsentedAccounts**
```swift
    open class func getAllOrganizationConsentedAccounts(consentId: UUID, completion: @escaping (_ data: DataConsentFinancialsDto?, _ error: Error?) -> Void)
```

Get all organizational consented financial accounts.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = 987 // UUID | Consent id.

// Get all organizational consented financial accounts.
DataConsentsAPI.getAllOrganizationConsentedAccounts(consentId: consentId) { (response, error) in
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

# **getAllOrganizationConsentedDocuments**
```swift
    open class func getAllOrganizationConsentedDocuments(consentId: UUID, completion: @escaping (_ data: DataConsentDocumentsDto?, _ error: Error?) -> Void)
```

Get the organization documents based on ConsentId.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = 987 // UUID | Consent id.

// Get the organization documents based on ConsentId.
DataConsentsAPI.getAllOrganizationConsentedDocuments(consentId: consentId) { (response, error) in
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

[**DataConsentDocumentsDto**](DataConsentDocumentsDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getConsentDetailsById**
```swift
    open class func getConsentDetailsById(consentId: UUID, completion: @escaping (_ data: DataConsentDetailsDto?, _ error: Error?) -> Void)
```

Get all individuals consent details by consent id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = 987 // UUID | Consent id.

// Get all individuals consent details by consent id.
DataConsentsAPI.getConsentDetailsById(consentId: consentId) { (response, error) in
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

[**DataConsentDetailsDto**](DataConsentDetailsDto.md)

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
    open class func getConsentedDocumentById(consentId: UUID, documentId: UUID, completion: @escaping (_ data: UserDocumentDetailsDto?, _ error: Error?) -> Void)
```

Get individuals consent document based on document id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = 987 // UUID | Consent id.
let documentId = 987 // UUID | Document Id.

// Get individuals consent document based on document id.
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
 **consentId** | **UUID** | Consent id. | 
 **documentId** | **UUID** | Document Id. | 

### Return type

[**UserDocumentDetailsDto**](UserDocumentDetailsDto.md)

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
    open class func getConsents(status: DataConsentStatus? = nil, from: Date? = nil, to: Date? = nil, pageNo: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: UserDataConsentInfoDtoPaginatedList?, _ error: Error?) -> Void)
```

Get the list of Consents Sent to Individuals.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let status = DataConsentStatus() // DataConsentStatus | Data consent status MyDataMyConsent.Domain.Entities.ConsentAggregate.Enums.DataConsentStatus. (optional)
let from = Date() // Date | From date time in utc timezone. (optional)
let to = Date() // Date | Til date time in utc timezone. (optional)
let pageNo = 987 // Int | Page number. (optional) (default to 1)
let pageSize = 987 // Int | Number of items to return. (optional) (default to 25)

// Get the list of Consents Sent to Individuals.
DataConsentsAPI.getConsents(status: status, from: from, to: to, pageNo: pageNo, pageSize: pageSize) { (response, error) in
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
 **from** | **Date** | From date time in utc timezone. | [optional] 
 **to** | **Date** | Til date time in utc timezone. | [optional] 
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

# **getConsentsForOrganizations**
```swift
    open class func getConsentsForOrganizations(status: DataConsentStatus? = nil, from: Date? = nil, to: Date? = nil, pageNo: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: OrganizationDataConsentInfoDtoPaginatedList?, _ error: Error?) -> Void)
```

Get the list of data consents sent for organizations.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let status = DataConsentStatus() // DataConsentStatus | Data consent status MyDataMyConsent.Domain.Entities.ConsentAggregate.Enums.DataConsentStatus. (optional)
let from = Date() // Date | From date time in utc timezone. (optional)
let to = Date() // Date | Til date time in utc timezone. (optional)
let pageNo = 987 // Int | Page number. (optional) (default to 1)
let pageSize = 987 // Int | Number of items to return. (optional) (default to 25)

// Get the list of data consents sent for organizations.
DataConsentsAPI.getConsentsForOrganizations(status: status, from: from, to: to, pageNo: pageNo, pageSize: pageSize) { (response, error) in
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
 **from** | **Date** | From date time in utc timezone. | [optional] 
 **to** | **Date** | Til date time in utc timezone. | [optional] 
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

# **getOrganizationConsentDetailsById**
```swift
    open class func getOrganizationConsentDetailsById(consentId: UUID, completion: @escaping (_ data: DataConsentDetailsDto?, _ error: Error?) -> Void)
```

Get all organization consent details by consent id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = 987 // UUID | Consent id.

// Get all organization consent details by consent id.
DataConsentsAPI.getOrganizationConsentDetailsById(consentId: consentId) { (response, error) in
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

[**DataConsentDetailsDto**](DataConsentDetailsDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrganizationConsentedDocumentById**
```swift
    open class func getOrganizationConsentedDocumentById(consentId: UUID, documentId: UUID, completion: @escaping (_ data: OrganizationDocumentDetailsDto?, _ error: Error?) -> Void)
```

Get organization consent document based on document id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = 987 // UUID | Consent id.
let documentId = 987 // UUID | Document Id.

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
 **consentId** | **UUID** | Consent id. | 
 **documentId** | **UUID** | Document Id. | 

### Return type

[**OrganizationDocumentDetailsDto**](OrganizationDocumentDetailsDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

