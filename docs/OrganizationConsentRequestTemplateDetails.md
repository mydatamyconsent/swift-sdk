# OrganizationConsentRequestTemplateDetails

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Consent request template id. | 
**title** | **String** | Consent request template title. | 
**description** | **String** | Consent request template description. | 
**purpose** | **String** | Consent request template purpose. | [optional] 
**shortId** | **String** | Consent request template short Id. | 
**status** | [**ConsentRequestTemplateStatus**](ConsentRequestTemplateStatus.md) |  | 
**dataLife** | [**IndividualConsentRequestTemplateDetailsDataLife**](IndividualConsentRequestTemplateDetailsDataLife.md) |  | [optional] 
**requestLife** | [**IndividualConsentRequestTemplateDetailsRequestLife**](IndividualConsentRequestTemplateDetailsRequestLife.md) |  | [optional] 
**dataFrequency** | [**IndividualConsentRequestTemplateDetailsDataFrequency**](IndividualConsentRequestTemplateDetailsDataFrequency.md) |  | [optional] 
**identifiers** | [IdentityField] | Consent request template identity fields. | [optional] 
**documents** | [DocumentField] | Consent request template document fields. | [optional] 
**financialAccounts** | [FinancialAccountField] | Consent request template financial account fields. | [optional] 
**createdBy** | **String** | Consent request template created by user. | 
**createdAtUtc** | **Date** | Consent request template created datetime in UTC timezone. | 
**approvedAtUtc** | **Date** | Consent request template approval datetime in UTC timezone. | [optional] 
**publishedAtUtc** | **Date** | Consent request template published datetime in UTC timezone. | [optional] 
**rejectedAtUtc** | **Date** | Consent request template rejection datetime in UTC timezone. | [optional] 
**rejectionReason** | **String** | Consent request template rejection reason. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


