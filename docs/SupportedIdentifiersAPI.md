# SupportedIdentifiersAPI

All URIs are relative to *https://api.mydatamyconsent.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAllSupportedIdentifiers**](SupportedIdentifiersAPI.md#getallsupportedidentifiers) | **GET** /v1/supported-identifiers/{countryIso2Code} | Get all supported identifiers by country.


# **getAllSupportedIdentifiers**
```swift
    open class func getAllSupportedIdentifiers(countryIso2Code: String, completion: @escaping (_ data: SupportedIdentifier?, _ error: Error?) -> Void)
```

Get all supported identifiers by country.

Get all supported identifiers by country.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let countryIso2Code = "countryIso2Code_example" // String | Country ISO 2 code.

// Get all supported identifiers by country.
SupportedIdentifiersAPI.getAllSupportedIdentifiers(countryIso2Code: countryIso2Code) { (response, error) in
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
 **countryIso2Code** | **String** | Country ISO 2 code. | 

### Return type

[**SupportedIdentifier**](SupportedIdentifier.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

