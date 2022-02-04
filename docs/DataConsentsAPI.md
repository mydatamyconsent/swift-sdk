# DataConsentsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1ConsentsIndividualsConsentIdAccountsAccountIdGet**](DataConsentsAPI.md#v1consentsindividualsconsentidaccountsaccountidget) | **GET** /v1/consents/individuals/{consentId}/accounts/{accountId} | Get individual consented financial account details based on account id.
[**v1ConsentsIndividualsConsentIdAccountsAccountIdTransactionsGet**](DataConsentsAPI.md#v1consentsindividualsconsentidaccountsaccountidtransactionsget) | **GET** /v1/consents/individuals/{consentId}/accounts/{accountId}/transactions | Get consented financial account transactions of an individual based on accountId.
[**v1ConsentsIndividualsConsentIdAccountsGet**](DataConsentsAPI.md#v1consentsindividualsconsentidaccountsget) | **GET** /v1/consents/individuals/{consentId}/accounts | Get all individual financial accounts in a consent.
[**v1ConsentsIndividualsConsentIdDocumentsDocumentIdDownloadGet**](DataConsentsAPI.md#v1consentsindividualsconsentiddocumentsdocumentiddownloadget) | **GET** /v1/consents/individuals/{consentId}/documents/{documentId}/download | Download a individuals consented document.
[**v1ConsentsIndividualsConsentIdDocumentsDocumentIdGet**](DataConsentsAPI.md#v1consentsindividualsconsentiddocumentsdocumentidget) | **GET** /v1/consents/individuals/{consentId}/documents/{documentId} | Get individuals consent document based on document id.
[**v1ConsentsIndividualsConsentIdDocumentsGet**](DataConsentsAPI.md#v1consentsindividualsconsentiddocumentsget) | **GET** /v1/consents/individuals/{consentId}/documents | Get the individual documents based on ConsentId.
[**v1ConsentsIndividualsConsentIdGet**](DataConsentsAPI.md#v1consentsindividualsconsentidget) | **GET** /v1/consents/individuals/{consentId} | Get individuals consent details by consent id.
[**v1ConsentsIndividualsGet**](DataConsentsAPI.md#v1consentsindividualsget) | **GET** /v1/consents/individuals | Get the list of Consents Sent to Individuals.
[**v1ConsentsOrganizationsConsentIdAccountsAccountIdGet**](DataConsentsAPI.md#v1consentsorganizationsconsentidaccountsaccountidget) | **GET** /v1/consents/organizations/{consentId}/accounts/{accountId} | Get orgnization consented financial account details based on account id.
[**v1ConsentsOrganizationsConsentIdAccountsAccountIdTransactionsGet**](DataConsentsAPI.md#v1consentsorganizationsconsentidaccountsaccountidtransactionsget) | **GET** /v1/consents/organizations/{consentId}/accounts/{accountId}/transactions | Get consented financial account transactions of an organization based on accountId.
[**v1ConsentsOrganizationsConsentIdAccountsGet**](DataConsentsAPI.md#v1consentsorganizationsconsentidaccountsget) | **GET** /v1/consents/organizations/{consentId}/accounts | Get all organizational financial accounts in a consent.
[**v1ConsentsOrganizationsConsentIdDocumentsDocumentIdDownloadGet**](DataConsentsAPI.md#v1consentsorganizationsconsentiddocumentsdocumentiddownloadget) | **GET** /v1/consents/organizations/{consentId}/documents/{documentId}/download | Download organizations consented document.
[**v1ConsentsOrganizationsConsentIdDocumentsDocumentIdGet**](DataConsentsAPI.md#v1consentsorganizationsconsentiddocumentsdocumentidget) | **GET** /v1/consents/organizations/{consentId}/documents/{documentId} | Get organizations consent document based on document id.
[**v1ConsentsOrganizationsConsentIdDocumentsGet**](DataConsentsAPI.md#v1consentsorganizationsconsentiddocumentsget) | **GET** /v1/consents/organizations/{consentId}/documents | Get the organizations documents based on ConsentId.
[**v1ConsentsOrganizationsConsentIdGet**](DataConsentsAPI.md#v1consentsorganizationsconsentidget) | **GET** /v1/consents/organizations/{consentId} | Get organizations consent details by consent id.
[**v1ConsentsOrganizationsGet**](DataConsentsAPI.md#v1consentsorganizationsget) | **GET** /v1/consents/organizations | Get the list of data consents sent for organizations.


# **v1ConsentsIndividualsConsentIdAccountsAccountIdGet**
```swift
    open class func v1ConsentsIndividualsConsentIdAccountsAccountIdGet(consentId: UUID, accountId: UUID, completion: @escaping (_ data: FinancialAccount?, _ error: Error?) -> Void)
```

Get individual consented financial account details based on account id.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = 987 // UUID | 
let accountId = 987 // UUID | 

// Get individual consented financial account details based on account id.
DataConsentsAPI.v1ConsentsIndividualsConsentIdAccountsAccountIdGet(consentId: consentId, accountId: accountId) { (response, error) in
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
 **consentId** | [**UUID**](.md) |  | 
 **accountId** | [**UUID**](.md) |  | 

### Return type

[**FinancialAccount**](FinancialAccount.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ConsentsIndividualsConsentIdAccountsAccountIdTransactionsGet**
```swift
    open class func v1ConsentsIndividualsConsentIdAccountsAccountIdTransactionsGet(consentId: UUID, accountId: UUID, filters: String? = nil, pageNo: Int? = nil, pageSize: Int? = nil, fromDate: Date? = nil, toDate: Date? = nil, completion: @escaping (_ data: UserAccountFinancialTransactionsDtoPaginatedList?, _ error: Error?) -> Void)
```

Get consented financial account transactions of an individual based on accountId.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = 987 // UUID | 
let accountId = 987 // UUID | 
let filters = "filters_example" // String |  (optional)
let pageNo = 987 // Int |  (optional)
let pageSize = 987 // Int |  (optional)
let fromDate = Date() // Date |  (optional)
let toDate = Date() // Date |  (optional)

// Get consented financial account transactions of an individual based on accountId.
DataConsentsAPI.v1ConsentsIndividualsConsentIdAccountsAccountIdTransactionsGet(consentId: consentId, accountId: accountId, filters: filters, pageNo: pageNo, pageSize: pageSize, fromDate: fromDate, toDate: toDate) { (response, error) in
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
 **consentId** | [**UUID**](.md) |  | 
 **accountId** | [**UUID**](.md) |  | 
 **filters** | **String** |  | [optional] 
 **pageNo** | **Int** |  | [optional] 
 **pageSize** | **Int** |  | [optional] 
 **fromDate** | **Date** |  | [optional] 
 **toDate** | **Date** |  | [optional] 

### Return type

[**UserAccountFinancialTransactionsDtoPaginatedList**](UserAccountFinancialTransactionsDtoPaginatedList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ConsentsIndividualsConsentIdAccountsGet**
```swift
    open class func v1ConsentsIndividualsConsentIdAccountsGet(consentId: UUID, completion: @escaping (_ data: DataConsentFinancialsDto?, _ error: Error?) -> Void)
```

Get all individual financial accounts in a consent.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = 987 // UUID | 

// Get all individual financial accounts in a consent.
DataConsentsAPI.v1ConsentsIndividualsConsentIdAccountsGet(consentId: consentId) { (response, error) in
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
 **consentId** | [**UUID**](.md) |  | 

### Return type

[**DataConsentFinancialsDto**](DataConsentFinancialsDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ConsentsIndividualsConsentIdDocumentsDocumentIdDownloadGet**
```swift
    open class func v1ConsentsIndividualsConsentIdDocumentsDocumentIdDownloadGet(consentId: UUID, documentId: UUID, completion: @escaping (_ data: UserDocumentDownloadDto?, _ error: Error?) -> Void)
```

Download a individuals consented document.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = 987 // UUID | consentId.
let documentId = 987 // UUID | documentId.

// Download a individuals consented document.
DataConsentsAPI.v1ConsentsIndividualsConsentIdDocumentsDocumentIdDownloadGet(consentId: consentId, documentId: documentId) { (response, error) in
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
 **consentId** | [**UUID**](.md) | consentId. | 
 **documentId** | [**UUID**](.md) | documentId. | 

### Return type

[**UserDocumentDownloadDto**](UserDocumentDownloadDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ConsentsIndividualsConsentIdDocumentsDocumentIdGet**
```swift
    open class func v1ConsentsIndividualsConsentIdDocumentsDocumentIdGet(consentId: UUID, documentId: UUID, completion: @escaping (_ data: UserDocumentDetailsDto?, _ error: Error?) -> Void)
```

Get individuals consent document based on document id.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = 987 // UUID | 
let documentId = 987 // UUID | Document Id.

// Get individuals consent document based on document id.
DataConsentsAPI.v1ConsentsIndividualsConsentIdDocumentsDocumentIdGet(consentId: consentId, documentId: documentId) { (response, error) in
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
 **consentId** | [**UUID**](.md) |  | 
 **documentId** | [**UUID**](.md) | Document Id. | 

### Return type

[**UserDocumentDetailsDto**](UserDocumentDetailsDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ConsentsIndividualsConsentIdDocumentsGet**
```swift
    open class func v1ConsentsIndividualsConsentIdDocumentsGet(consentId: UUID, completion: @escaping (_ data: DataConsentDocumentsDto?, _ error: Error?) -> Void)
```

Get the individual documents based on ConsentId.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = 987 // UUID | 

// Get the individual documents based on ConsentId.
DataConsentsAPI.v1ConsentsIndividualsConsentIdDocumentsGet(consentId: consentId) { (response, error) in
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
 **consentId** | [**UUID**](.md) |  | 

### Return type

[**DataConsentDocumentsDto**](DataConsentDocumentsDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ConsentsIndividualsConsentIdGet**
```swift
    open class func v1ConsentsIndividualsConsentIdGet(consentId: UUID, completion: @escaping (_ data: DataConsentDetailsDto?, _ error: Error?) -> Void)
```

Get individuals consent details by consent id.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = 987 // UUID | 

// Get individuals consent details by consent id.
DataConsentsAPI.v1ConsentsIndividualsConsentIdGet(consentId: consentId) { (response, error) in
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
 **consentId** | [**UUID**](.md) |  | 

### Return type

[**DataConsentDetailsDto**](DataConsentDetailsDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ConsentsIndividualsGet**
```swift
    open class func v1ConsentsIndividualsGet(pageNo: Int? = nil, pageSize: Int? = nil, status: DataConsentStatus? = nil, startDate: Date? = nil, endDate: Date? = nil, completion: @escaping (_ data: UserDataConsentInfoDtoPaginatedList?, _ error: Error?) -> Void)
```

Get the list of Consents Sent to Individuals.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let pageNo = 987 // Int |  (optional)
let pageSize = 987 // Int |  (optional)
let status = DataConsentStatus() // DataConsentStatus |  (optional)
let startDate = Date() // Date |  (optional)
let endDate = Date() // Date |  (optional)

// Get the list of Consents Sent to Individuals.
DataConsentsAPI.v1ConsentsIndividualsGet(pageNo: pageNo, pageSize: pageSize, status: status, startDate: startDate, endDate: endDate) { (response, error) in
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
 **startDate** | **Date** |  | [optional] 
 **endDate** | **Date** |  | [optional] 

### Return type

[**UserDataConsentInfoDtoPaginatedList**](UserDataConsentInfoDtoPaginatedList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ConsentsOrganizationsConsentIdAccountsAccountIdGet**
```swift
    open class func v1ConsentsOrganizationsConsentIdAccountsAccountIdGet(consentId: UUID, accountId: UUID, completion: @escaping (_ data: OrganizationFinancialAccountDto?, _ error: Error?) -> Void)
```

Get orgnization consented financial account details based on account id.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = 987 // UUID | 
let accountId = 987 // UUID | 

// Get orgnization consented financial account details based on account id.
DataConsentsAPI.v1ConsentsOrganizationsConsentIdAccountsAccountIdGet(consentId: consentId, accountId: accountId) { (response, error) in
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
 **consentId** | [**UUID**](.md) |  | 
 **accountId** | [**UUID**](.md) |  | 

### Return type

[**OrganizationFinancialAccountDto**](OrganizationFinancialAccountDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ConsentsOrganizationsConsentIdAccountsAccountIdTransactionsGet**
```swift
    open class func v1ConsentsOrganizationsConsentIdAccountsAccountIdTransactionsGet(consentId: UUID, accountId: UUID, filters: String? = nil, pageNo: Int? = nil, pageSize: Int? = nil, fromDate: Date? = nil, toDate: Date? = nil, completion: @escaping (_ data: OrganizationFinancialTransactionsDtoPaginatedList?, _ error: Error?) -> Void)
```

Get consented financial account transactions of an organization based on accountId.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = 987 // UUID | 
let accountId = 987 // UUID | 
let filters = "filters_example" // String |  (optional)
let pageNo = 987 // Int |  (optional)
let pageSize = 987 // Int |  (optional)
let fromDate = Date() // Date |  (optional)
let toDate = Date() // Date |  (optional)

// Get consented financial account transactions of an organization based on accountId.
DataConsentsAPI.v1ConsentsOrganizationsConsentIdAccountsAccountIdTransactionsGet(consentId: consentId, accountId: accountId, filters: filters, pageNo: pageNo, pageSize: pageSize, fromDate: fromDate, toDate: toDate) { (response, error) in
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
 **consentId** | [**UUID**](.md) |  | 
 **accountId** | [**UUID**](.md) |  | 
 **filters** | **String** |  | [optional] 
 **pageNo** | **Int** |  | [optional] 
 **pageSize** | **Int** |  | [optional] 
 **fromDate** | **Date** |  | [optional] 
 **toDate** | **Date** |  | [optional] 

### Return type

[**OrganizationFinancialTransactionsDtoPaginatedList**](OrganizationFinancialTransactionsDtoPaginatedList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ConsentsOrganizationsConsentIdAccountsGet**
```swift
    open class func v1ConsentsOrganizationsConsentIdAccountsGet(consentId: UUID, completion: @escaping (_ data: DataConsentFinancialsDto?, _ error: Error?) -> Void)
```

Get all organizational financial accounts in a consent.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = 987 // UUID | 

// Get all organizational financial accounts in a consent.
DataConsentsAPI.v1ConsentsOrganizationsConsentIdAccountsGet(consentId: consentId) { (response, error) in
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
 **consentId** | [**UUID**](.md) |  | 

### Return type

[**DataConsentFinancialsDto**](DataConsentFinancialsDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ConsentsOrganizationsConsentIdDocumentsDocumentIdDownloadGet**
```swift
    open class func v1ConsentsOrganizationsConsentIdDocumentsDocumentIdDownloadGet(consentId: UUID, documentId: UUID, completion: @escaping (_ data: OrganizationDocumentDownloadDto?, _ error: Error?) -> Void)
```

Download organizations consented document.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = 987 // UUID | 
let documentId = 987 // UUID | 

// Download organizations consented document.
DataConsentsAPI.v1ConsentsOrganizationsConsentIdDocumentsDocumentIdDownloadGet(consentId: consentId, documentId: documentId) { (response, error) in
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
 **consentId** | [**UUID**](.md) |  | 
 **documentId** | [**UUID**](.md) |  | 

### Return type

[**OrganizationDocumentDownloadDto**](OrganizationDocumentDownloadDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ConsentsOrganizationsConsentIdDocumentsDocumentIdGet**
```swift
    open class func v1ConsentsOrganizationsConsentIdDocumentsDocumentIdGet(consentId: UUID, documentId: UUID, completion: @escaping (_ data: OrganizationDocumentDetailsDto?, _ error: Error?) -> Void)
```

Get organizations consent document based on document id.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = 987 // UUID | 
let documentId = 987 // UUID | 

// Get organizations consent document based on document id.
DataConsentsAPI.v1ConsentsOrganizationsConsentIdDocumentsDocumentIdGet(consentId: consentId, documentId: documentId) { (response, error) in
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
 **consentId** | [**UUID**](.md) |  | 
 **documentId** | [**UUID**](.md) |  | 

### Return type

[**OrganizationDocumentDetailsDto**](OrganizationDocumentDetailsDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ConsentsOrganizationsConsentIdDocumentsGet**
```swift
    open class func v1ConsentsOrganizationsConsentIdDocumentsGet(consentId: UUID, completion: @escaping (_ data: DataConsentDocumentsDto?, _ error: Error?) -> Void)
```

Get the organizations documents based on ConsentId.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = 987 // UUID | 

// Get the organizations documents based on ConsentId.
DataConsentsAPI.v1ConsentsOrganizationsConsentIdDocumentsGet(consentId: consentId) { (response, error) in
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
 **consentId** | [**UUID**](.md) |  | 

### Return type

[**DataConsentDocumentsDto**](DataConsentDocumentsDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ConsentsOrganizationsConsentIdGet**
```swift
    open class func v1ConsentsOrganizationsConsentIdGet(consentId: UUID, completion: @escaping (_ data: DataConsentDetailsDto?, _ error: Error?) -> Void)
```

Get organizations consent details by consent id.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = 987 // UUID | 

// Get organizations consent details by consent id.
DataConsentsAPI.v1ConsentsOrganizationsConsentIdGet(consentId: consentId) { (response, error) in
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
 **consentId** | [**UUID**](.md) |  | 

### Return type

[**DataConsentDetailsDto**](DataConsentDetailsDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ConsentsOrganizationsGet**
```swift
    open class func v1ConsentsOrganizationsGet(pageNo: Int? = nil, pageSize: Int? = nil, status: DataConsentStatus? = nil, startDate: Date? = nil, endDate: Date? = nil, completion: @escaping (_ data: OrganizationDataConsentInfoDtoPaginatedList?, _ error: Error?) -> Void)
```

Get the list of data consents sent for organizations.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let pageNo = 987 // Int |  (optional)
let pageSize = 987 // Int |  (optional)
let status = DataConsentStatus() // DataConsentStatus |  (optional)
let startDate = Date() // Date |  (optional)
let endDate = Date() // Date |  (optional)

// Get the list of data consents sent for organizations.
DataConsentsAPI.v1ConsentsOrganizationsGet(pageNo: pageNo, pageSize: pageSize, status: status, startDate: startDate, endDate: endDate) { (response, error) in
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
 **startDate** | **Date** |  | [optional] 
 **endDate** | **Date** |  | [optional] 

### Return type

[**OrganizationDataConsentInfoDtoPaginatedList**](OrganizationDataConsentInfoDtoPaginatedList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

