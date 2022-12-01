# SupportedIdentifiersAPI

All URIs are relative to *https://api.mydatamyconsent.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1SupportedIdentifiersCountryIso2CodeGet**](SupportedIdentifiersAPI.md#v1supportedidentifierscountryiso2codeget) | **GET** /v1/supported-identifiers/{country_iso2_code} | Get all supported identifiers by country.


# **v1SupportedIdentifiersCountryIso2CodeGet**
```swift
    open class func v1SupportedIdentifiersCountryIso2CodeGet(countryIso2Code: String, completion: @escaping (_ data: SupportedIdentifier?, _ error: Error?) -> Void)
```

Get all supported identifiers by country.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let countryIso2Code = "countryIso2Code_example" // String | 

// Get all supported identifiers by country.
SupportedIdentifiersAPI.v1SupportedIdentifiersCountryIso2CodeGet(countryIso2Code: countryIso2Code) { (response, error) in
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
 **countryIso2Code** | **String** |  | 

### Return type

[**SupportedIdentifier**](SupportedIdentifier.md)

### Authorization

[OAuth2ClientCredentials](../README.md#OAuth2ClientCredentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json; charset=utf-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

