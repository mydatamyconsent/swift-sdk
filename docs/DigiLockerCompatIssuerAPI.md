# DigiLockerCompatIssuerAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**issuerIssuedoc1XmlPost**](DigiLockerCompatIssuerAPI.md#issuerissuedoc1xmlpost) | **POST** /issuer/issuedoc/1/xml | Digilocker Compatible endpoint to Issue Documents.


# **issuerIssuedoc1XmlPost**
```swift
    open class func issuerIssuedoc1XmlPost(pushUriRequest: PushUriRequest? = nil, completion: @escaping (_ data: PushUriResponse?, _ error: Error?) -> Void)
```

Digilocker Compatible endpoint to Issue Documents.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let pushUriRequest = PushUriRequest(uriDetails: UriDetails(aadhaar: "aadhaar_example", uri: "uri_example", docType: "docType_example", docName: "docName_example", docId: "docId_example", issuedOn: "issuedOn_example", validFrom: "validFrom_example", validTo: "validTo_example", timestamp: "timestamp_example", action: "action_example"), ns2: "ns2_example", ver: "ver_example", ts: "ts_example", txn: "txn_example", orgId: "orgId_example", keyhash: "keyhash_example") // PushUriRequest |  (optional)

// Digilocker Compatible endpoint to Issue Documents.
DigiLockerCompatIssuerAPI.issuerIssuedoc1XmlPost(pushUriRequest: pushUriRequest) { (response, error) in
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
 **pushUriRequest** | [**PushUriRequest**](PushUriRequest.md) |  | [optional] 

### Return type

[**PushUriResponse**](PushUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/xml
 - **Accept**: application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

