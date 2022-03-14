# OrganizationDataConsent

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**approver** | **String** | Name of consent approver organization. | 
**id** | **UUID** | Data consent id. | 
**templateId** | **UUID** | Consent template id. | [optional] 
**title** | **String** | Consent title. | 
**description** | **String** | Consent description. | 
**purpose** | **String** | Consent purpose. | [optional] 
**status** | [**DataConsentStatus**](DataConsentStatus.md) |  | 
**transactionId** | **String** | Transaction id. | [optional] 
**approvedAtUtc** | **Date** | Consent approval datetime in UTC timezone. | 
**dataAccessExpiresAtUtc** | **Date** | Data access expiration datetime in UTC timezone. | 
**revokedAtUtc** | **Date** | Consent revocation datetime in UTC timezone. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


