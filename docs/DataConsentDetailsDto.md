# DataConsentDetailsDto

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**consentRequestId** | **UUID** |  | 
**title** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**dataLife** | [**Life**](Life.md) |  | [optional] 
**requestedByOrg** | [**Requester**](Requester.md) |  | [optional] 
**status** | [**DataConsentStatus**](DataConsentStatus.md) |  | [optional] 
**approvedAtUtc** | **Date** |  | [optional] 
**rejectedAtUtc** | **Date** |  | [optional] 
**revokedAtUtc** | **Date** |  | [optional] 
**requestedExpiresAtUtc** | **Date** |  | [optional] 
**requestedAtUtc** | **Date** |  | [optional] 
**identifiers** | [**AnyCodable**](.md) |  | [optional] 
**documents** | [DataConsentDocumentDetailsDto] |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


