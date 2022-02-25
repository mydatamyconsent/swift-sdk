# DocumentIssueRequestDetails

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** | Request Id. | 
**documentTypeId** | **UUID** |  | 
**typeName** | **String** |  | 
**identifier** | **String** |  | 
**status** | [**DocumentIssueRequestStatus**](DocumentIssueRequestStatus.md) |  | 
**description** | **String** |  | 
**receiver** | [**AnyCodable**](.md) |  | 
**issuedAtUtc** | **Date** |  | 
**validFromUtc** | **Date** |  | 
**expiresAtUtc** | **Date** |  | [optional] 
**metaData** | [**AnyCodable**](.md) |  | [optional] 
**createdAtUtc** | **Date** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


