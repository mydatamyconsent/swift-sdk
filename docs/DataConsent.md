# DataConsent

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** |  | [optional] 
**userId** | **UUID** |  | [optional] 
**organizationId** | **UUID** |  | [optional] 
**requestedByOrgId** | **UUID** |  | [optional] 
**transactionId** | **String** |  | [optional] 
**startDateTime** | **Date** |  | [optional] 
**expiryDateTime** | **Date** |  | [optional] 
**description** | **String** |  | [optional] 
**purposeCode** | **String** |  | [optional] 
**purposeLink** | **String** |  | [optional] 
**location** | **String** |  | [optional] 
**agreementId** | **UUID** |  | [optional] 
**dataLifeUnit** | [**DataLifeUnit**](DataLifeUnit.md) |  | [optional] 
**dataLifeValue** | **Int** |  | [optional] 
**dataFetchFrequencyUnit** | [**DataFetchFrequencyUnit**](DataFetchFrequencyUnit.md) |  | [optional] 
**dataFetchFrequencyUnitValue** | **Int** |  | [optional] 
**dataFetchType** | [**DataFetchType**](DataFetchType.md) |  | [optional] 
**status** | [**DataConsentStatus**](DataConsentStatus.md) |  | [optional] 
**createdAtUtc** | **Date** |  | [optional] 
**approvedAtUtc** | **Date** |  | [optional] 
**rejectedAtUtc** | **Date** |  | [optional] 
**user** | [**ApplicationUser**](ApplicationUser.md) |  | [optional] 
**organization** | [**Organization**](Organization.md) |  | [optional] 
**requestedByOrg** | [**Organization**](Organization.md) |  | [optional] 
**agreement** | [**DataProcessingAgreement**](DataProcessingAgreement.md) |  | [optional] 
**identityClaims** | [IdentityClaim] |  | [optional] 
**identifiers** | [DataConsentIdentifier] |  | [optional] 
**requestedFinancialAccounts** | [DataConsentRequestedFinancialAccount] |  | [optional] 
**requestedDocuments** | [DataConsentRequestedDocument] |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


