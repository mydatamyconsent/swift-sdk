# DataConsentRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** | Data consent request id. | 
**templateId** | **UUID** | Data consent template id. | [optional] 
**consentId** | **UUID** | Data consent id. | [optional] 
**title** | **String** | Data consent title. | 
**description** | **String** | Data consent description. | 
**purpose** | **String** | Data consent purpose. | [optional] 
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


