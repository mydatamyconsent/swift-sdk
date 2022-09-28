# ConsentDetails

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Consent id. | 
**requestId** | **String** | Consent request id. | 
**templateId** | **String** | Consent request template id. | [optional] 
**title** | **String** | Consent title. | 
**description** | **String** | Consent description. | 
**purpose** | **String** | Consent purpose. | [optional] 
**status** | [**DataConsentStatus**](DataConsentStatus.md) |  | 
**transactionId** | **String** | Transaction id. | [optional] 
**approvedAtUtc** | **Date** | Consent approval datetime in UTC timezone. | 
**dataAccessExpiresAtUtc** | **Date** | Data access expiration datetime in UTC timezone. | 
**revokedAtUtc** | **Date** | Consent revocation datetime in UTC timezone. | [optional] 
**collectables** | [CollectibleTypes] | List of supported collectible types. | 
**identifiers** | [ConsentedIdentifier] | Consented identity details. | [optional] 
**documents** | [ConsentedDocument] | List of consented documents. | [optional] 
**medicalRecords** | [ConsentedMedicalRecord] | List of consented medical records. | [optional] 
**financialAccounts** | [ConsentedFinancialAccount] | List of consented financial accounts. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


