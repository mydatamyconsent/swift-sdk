# DigiLockerCompatIssuerAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**digilockerCompatIssueDocument**](DigiLockerCompatIssuerAPI.md#digilockercompatissuedocument) | **POST** /issuer/issuedoc/1/xml | Digilocker Compatible endpoint to issue document.


# **digilockerCompatIssueDocument**
```swift
    open class func digilockerCompatIssueDocument(pushUriRequest: PushUriRequest? = nil, completion: @escaping (_ data: PushUriResponse?, _ error: Error?) -> Void)
```

Digilocker Compatible endpoint to issue document.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let pushUriRequest = PushUriRequest(uriDetails: UriDetails(aadhaar: "aadhaar_example", uri: "uri_example", docType: "docType_example", docName: "docName_example", docId: "docId_example", issuedOn: "issuedOn_example", validFrom: "validFrom_example", validTo: "validTo_example", timestamp: "timestamp_example", action: "action_example"), ns2: "ns2_example", ver: "ver_example", ts: "ts_example", txn: "txn_example", orgId: "orgId_example", keyhash: "keyhash_example") // PushUriRequest | Push uri request MyDataMyConsent.Models.DigiLocker.PushUriRequest. (optional)

// Digilocker Compatible endpoint to issue document.
DigiLockerCompatIssuerAPI.digilockerCompatIssueDocument(pushUriRequest: pushUriRequest) { (response, error) in
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
 **pushUriRequest** | [**PushUriRequest**](PushUriRequest.md) | Push uri request MyDataMyConsent.Models.DigiLocker.PushUriRequest. | [optional] 

### Return type

[**PushUriResponse**](PushUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/xml
 - **Accept**: application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

