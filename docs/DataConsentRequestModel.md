# DataConsentRequestModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**organizationId** | **UUID** |  | [optional] 
**transactionId** | **String** |  | [optional] 
**identifiers** | **[String: String]** |  | [optional] 
**startDateTime** | **Date** |  | [optional] 
**expiryDateTime** | **Date** |  | [optional] 
**description** | **String** |  | [optional] 
**purposeCode** | **String** |  | [optional] 
**purposeLink** | **String** |  | [optional] 
**dataLifeUnit** | [**DataLifeUnit**](DataLifeUnit.md) |  | [optional] 
**dataLifeValue** | **Int** |  | [optional] 
**dataFetchFrequencyUnit** | [**DataFetchFrequencyUnit**](DataFetchFrequencyUnit.md) |  | [optional] 
**dataFetchFrequencyUnitValue** | **Int** |  | [optional] 
**dataFetchType** | [**DataFetchType**](DataFetchType.md) |  | [optional] 
**agreementId** | **UUID** |  | [optional] 
**identityClaims** | [IdentityClaim] |  | [optional] 
**financialAccounts** | [DataConsentRequestedFaDto] |  | [optional] 
**documents** | [DataConsentRequestedDocumentDto] |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


