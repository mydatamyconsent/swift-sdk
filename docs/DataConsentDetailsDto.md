# DataConsentDetailsDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** |  | [optional] 
**requester** | [**DataConsentRequesterDto**](DataConsentRequesterDto.md) |  | [optional] 
**location** | **String** |  | [optional] 
**personalInfoRequested** | **Bool** |  | [optional] 
**documents** | **Int** |  | [optional] 
**financialAccounts** | **Int** |  | [optional] 
**transactionId** | **String** |  | [optional] 
**ipAddress** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**purposeCode** | **String** |  | [optional] 
**purposeLink** | **String** |  | [optional] 
**agreementId** | **UUID** |  | [optional] 
**dataLifeUnit** | [**DataLifeUnit**](DataLifeUnit.md) |  | [optional] 
**dataLifeValue** | **Int** |  | [optional] 
**dataFetchFrequencyUnit** | [**DataFetchFrequencyUnit**](DataFetchFrequencyUnit.md) |  | [optional] 
**dataFetchFrequencyUnitValue** | **Int** |  | [optional] 
**dataFetchType** | [**DataFetchType**](DataFetchType.md) |  | [optional] 
**status** | [**DataConsentStatus**](DataConsentStatus.md) |  | [optional] 
**approvedAtUtc** | **Date** |  | [optional] 
**rejectedAtUtc** | **Date** |  | [optional] 
**expiresAtUtc** | **Date** |  | [optional] 
**requestedAtUtc** | **Date** |  | [optional] 
**requestedFinancialAccounts** | [DataConsentRequestedAccountDto] |  | [optional] 
**requestedDocuments** | [DataConsentRequestedDocumentDto] |  | [optional] 
**requestedHealthData** | [DataConsentRequestedDocument] |  | [optional] 
**requestedIdentityDetails** | [**JsonSchema**](JsonSchema.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


