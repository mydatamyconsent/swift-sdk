# DataConsentRequestDetails

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** | Consent request id | 
**templateId** | **UUID** | Consent request template id | [optional] 
**consentId** | **UUID** | Data Consent id | [optional] 
**title** | **String** | Consent request title. | 
**description** | **String** | Consent request description. | 
**purpose** | **String** | Consent request purpose. | [optional] 
**status** | [**DataConsentStatus**](DataConsentStatus.md) |  | 
**transactionId** | **String** | Transaction id | [optional] 
**createdAtUtc** | **Date** | Request creation datetime in UTC timezone | 
**expiresAtUtc** | **Date** | Request expiration datetime in UTC timezone | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


