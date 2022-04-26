# DataConsent

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** | Data consent id. | 
**requestId** | **UUID** | Data consent request id. | 
**templateId** | **UUID** | Consent template id. | [optional] 
**title** | **String** | Consent title. | 
**description** | **String** | Consent description. | 
**purpose** | **String** | Consent purpose. | [optional] 
**status** | [**DataConsentStatus**](DataConsentStatus.md) |  | 
**transactionId** | **String** | Transaction id. | [optional] 
**approvedAtUtc** | **Date** | Consent approval datetime in UTC timezone. | 
**dataAccessExpiresAtUtc** | **Date** | Data access expiration datetime in UTC timezone. | 
**revokedAtUtc** | **Date** | Consent revocation datetime in UTC timezone. | [optional] 
**collectables** | [CollectibleTypes] | List of supported collectible types. | 
**identifiers** | [**AnyCodable**](.md) | Consented identity details. | [optional] 
**documents** | [DataConsentDocument] | List of consented documents. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


