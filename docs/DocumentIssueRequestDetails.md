# DocumentIssueRequestDetails

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** | Request Id. | 
**documentTypeId** | **UUID** |  | 
**documentTypeName** | **String** |  | 
**documentIdentifier** | **String** |  | 
**status** | [**DocumentIssueRequestStatus**](DocumentIssueRequestStatus.md) |  | [optional] 
**description** | **String** |  | 
**receiver** | [**AnyCodable**](.md) |  | 
**expiresAtUtc** | **Date** |  | [optional] 
**metadata** | [**AnyCodable**](.md) |  | [optional] 
**createdAtUtc** | **Date** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


