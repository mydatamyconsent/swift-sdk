# ConsentRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Consent request id. | 
**templateId** | **String** | Consent request template id. | [optional] 
**consentId** | **String** | Consent id. | [optional] 
**title** | **String** | Consent title. | 
**description** | **String** | Consent description. | 
**purpose** | **String** | Consent purpose. | [optional] 
**dataLife** | [**Life**](Life.md) |  | [optional] 
**collectables** | [CollectibleTypes] | List of supported collectables. | 
**receiver** | [**ConsentRequestReceiver**](ConsentRequestReceiver.md) |  | 
**status** | [**DataConsentStatus**](DataConsentStatus.md) |  | 
**createdAtUtc** | **Date** | Request creation datetime in UTC timezone. | 
**expiresAtUtc** | **Date** | Request expiration datetime in UTC timezone. | 
**approvedAtUtc** | **Date** | Request approval datetime in UTC timezone. | [optional] 
**dataAccessExpiresAtUtc** | **Date** | Data access expiration datetime in UTC timezone. | [optional] 
**rejectedAtUtc** | **Date** | Request rejection datetime in UTC timezone. | [optional] 
**revokedAtUtc** | **Date** | Request revocation datetime in UTC timezone. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


