# DataConsentsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1ConsentsConsentIdAccountsAccountIdGet**](DataConsentsAPI.md#v1consentsconsentidaccountsaccountidget) | **GET** /v1/consents/{consentId}/accounts/{accountId} | Get consented financial account details.
[**v1ConsentsConsentIdAccountsAccountIdInsightsGet**](DataConsentsAPI.md#v1consentsconsentidaccountsaccountidinsightsget) | **GET** /v1/consents/{consentId}/accounts/{accountId}/insights | Get consented financial account insights.
[**v1ConsentsConsentIdAccountsAccountIdTransactionsGet**](DataConsentsAPI.md#v1consentsconsentidaccountsaccountidtransactionsget) | **GET** /v1/consents/{consentId}/accounts/{accountId}/transactions | Get consented financial account transactions.
[**v1ConsentsConsentIdAccountsGet**](DataConsentsAPI.md#v1consentsconsentidaccountsget) | **GET** /v1/consents/{consentId}/accounts | Get all accounts in a consent.
[**v1ConsentsConsentIdDocumentsDocumentIdAnalysisGet**](DataConsentsAPI.md#v1consentsconsentiddocumentsdocumentidanalysisget) | **GET** /v1/consents/{consentId}/documents/{documentId}/analysis | Get analysis of a consented document.
[**v1ConsentsConsentIdDocumentsDocumentIdDownloadGet**](DataConsentsAPI.md#v1consentsconsentiddocumentsdocumentiddownloadget) | **GET** /v1/consents/{consentId}/documents/{documentId}/download | Download a consented document.
[**v1ConsentsConsentIdDocumentsDocumentIdGet**](DataConsentsAPI.md#v1consentsconsentiddocumentsdocumentidget) | **GET** /v1/consents/{consentId}/documents/{documentId} | Get consented document details.
[**v1ConsentsConsentIdDocumentsGet**](DataConsentsAPI.md#v1consentsconsentiddocumentsget) | **GET** /v1/consents/{consentId}/documents | Get all documents in a consent.
[**v1ConsentsConsentIdGet**](DataConsentsAPI.md#v1consentsconsentidget) | **GET** /v1/consents/{consentId} | Get consent details by consent id.
[**v1ConsentsGet**](DataConsentsAPI.md#v1consentsget) | **GET** /v1/consents | Get all consents filtered by status and time.


# **v1ConsentsConsentIdAccountsAccountIdGet**
```swift
    open class func v1ConsentsConsentIdAccountsAccountIdGet(consentId: String, accountId: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get consented financial account details.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = "consentId_example" // String | 
let accountId = "accountId_example" // String | 

// Get consented financial account details.
DataConsentsAPI.v1ConsentsConsentIdAccountsAccountIdGet(consentId: consentId, accountId: accountId) { (response, error) in
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

[**AnyCodable**](AnyCodable.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ConsentsConsentIdAccountsAccountIdInsightsGet**
```swift
    open class func v1ConsentsConsentIdAccountsAccountIdInsightsGet(consentId: String, accountId: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get consented financial account insights.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = "consentId_example" // String | 
let accountId = "accountId_example" // String | 

// Get consented financial account insights.
DataConsentsAPI.v1ConsentsConsentIdAccountsAccountIdInsightsGet(consentId: consentId, accountId: accountId) { (response, error) in
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

[**AnyCodable**](AnyCodable.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ConsentsConsentIdAccountsAccountIdTransactionsGet**
```swift
    open class func v1ConsentsConsentIdAccountsAccountIdTransactionsGet(consentId: String, accountId: String, filters: String? = nil, fromDate: Date? = nil, toDate: Date? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get consented financial account transactions.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = "consentId_example" // String | 
let accountId = "accountId_example" // String | 
let filters = "filters_example" // String |  (optional)
let fromDate = Date() // Date |  (optional)
let toDate = Date() // Date |  (optional)

// Get consented financial account transactions.
DataConsentsAPI.v1ConsentsConsentIdAccountsAccountIdTransactionsGet(consentId: consentId, accountId: accountId, filters: filters, fromDate: fromDate, toDate: toDate) { (response, error) in
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
 **fromDate** | **Date** |  | [optional] 
 **toDate** | **Date** |  | [optional] 

### Return type

[**AnyCodable**](AnyCodable.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ConsentsConsentIdAccountsGet**
```swift
    open class func v1ConsentsConsentIdAccountsGet(consentId: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get all accounts in a consent.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = "consentId_example" // String | 

// Get all accounts in a consent.
DataConsentsAPI.v1ConsentsConsentIdAccountsGet(consentId: consentId) { (response, error) in
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

[**AnyCodable**](AnyCodable.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ConsentsConsentIdDocumentsDocumentIdAnalysisGet**
```swift
    open class func v1ConsentsConsentIdDocumentsDocumentIdAnalysisGet(consentId: String, documentId: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get analysis of a consented document.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = "consentId_example" // String | 
let documentId = "documentId_example" // String | Document Id.

// Get analysis of a consented document.
DataConsentsAPI.v1ConsentsConsentIdDocumentsDocumentIdAnalysisGet(consentId: consentId, documentId: documentId) { (response, error) in
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
 **documentId** | **String** | Document Id. | 

### Return type

[**AnyCodable**](AnyCodable.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ConsentsConsentIdDocumentsDocumentIdDownloadGet**
```swift
    open class func v1ConsentsConsentIdDocumentsDocumentIdDownloadGet(consentId: String, documentId: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Download a consented document.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = "consentId_example" // String | 
let documentId = "documentId_example" // String | Document Id.

// Download a consented document.
DataConsentsAPI.v1ConsentsConsentIdDocumentsDocumentIdDownloadGet(consentId: consentId, documentId: documentId) { (response, error) in
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
 **documentId** | **String** | Document Id. | 

### Return type

[**AnyCodable**](AnyCodable.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ConsentsConsentIdDocumentsDocumentIdGet**
```swift
    open class func v1ConsentsConsentIdDocumentsDocumentIdGet(consentId: String, documentId: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get consented document details.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = "consentId_example" // String | 
let documentId = "documentId_example" // String | Document Id.

// Get consented document details.
DataConsentsAPI.v1ConsentsConsentIdDocumentsDocumentIdGet(consentId: consentId, documentId: documentId) { (response, error) in
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
 **documentId** | **String** | Document Id. | 

### Return type

[**AnyCodable**](AnyCodable.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ConsentsConsentIdDocumentsGet**
```swift
    open class func v1ConsentsConsentIdDocumentsGet(consentId: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get all documents in a consent.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = "consentId_example" // String | 

// Get all documents in a consent.
DataConsentsAPI.v1ConsentsConsentIdDocumentsGet(consentId: consentId) { (response, error) in
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

[**AnyCodable**](AnyCodable.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ConsentsConsentIdGet**
```swift
    open class func v1ConsentsConsentIdGet(consentId: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get consent details by consent id.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let consentId = "consentId_example" // String | 

// Get consent details by consent id.
DataConsentsAPI.v1ConsentsConsentIdGet(consentId: consentId) { (response, error) in
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

[**AnyCodable**](AnyCodable.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ConsentsGet**
```swift
    open class func v1ConsentsGet(status: DataConsentStatus? = nil, startDate: Date? = nil, endDate: Date? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get all consents filtered by status and time.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let status = DataConsentStatus() // DataConsentStatus | MyDataMyConsent.Domain.Entities.ConsentAggregate.Enums.DataConsentStatus. (optional)
let startDate = Date() // Date | System.DateTime. (optional)
let endDate = Date() // Date | till dateSystem.DateTime. (optional)

// Get all consents filtered by status and time.
DataConsentsAPI.v1ConsentsGet(status: status, startDate: startDate, endDate: endDate) { (response, error) in
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
 **status** | [**DataConsentStatus**](.md) | MyDataMyConsent.Domain.Entities.ConsentAggregate.Enums.DataConsentStatus. | [optional] 
 **startDate** | **Date** | System.DateTime. | [optional] 
 **endDate** | **Date** | till dateSystem.DateTime. | [optional] 

### Return type

[**AnyCodable**](AnyCodable.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

