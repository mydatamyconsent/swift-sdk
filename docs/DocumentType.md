# DocumentType

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** | Document Type Identifier. | 
**categoryType** | [**DocumentCategoryType**](DocumentCategoryType.md) |  | 
**subCategoryType** | [**DocumentSubCategoryType**](DocumentSubCategoryType.md) |  | 
**name** | **String** | Document Type Name. eg: Driving License. | 
**slug** | **String** | Document Type Unique Slug. eg: \&quot;in.gov.gj.transport.dl\&quot;. | 
**description** | **String** | Document Type description. eg: Gujarat State Driving License. | [optional] 
**logoUrl** | **String** | Logo URL of document type. | 
**searchServiceName** | **String** | Document search repository service name. | [optional] 
**repositoryServiceName** | **String** | Document repository service name. | [optional] 
**supportedEntityTypes** | [SupportedEntityType] | Supported entity types. eg: Individual, Organization. | 
**addedBy** | **String** | Name of the document type creator. | 
**payableAmount** | **Double** | Payable amount if document is chargeable. eg: 10.25. | [optional] 
**payableAmountCurrency** | **String** | Payable amount currency. eg: INR, USD etc.,. | [optional] 
**approvedAtUtc** | **Date** | DateTime of approval in UTC timezone. | [optional] 
**approved** | **Bool** | Document type approval status. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


