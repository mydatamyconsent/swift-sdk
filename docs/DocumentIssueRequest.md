# DocumentIssueRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**documentTypeId** | **UUID** | Document type id. | 
**identifier** | **String** | Document identifier. | 
**description** | **String** | Document description. | 
**receiver** | [**DocumentReceiver**](DocumentReceiver.md) |  | 
**issuedAtUtc** | **Date** | Datetime of issue in UTC timezone. | 
**validFromUtc** | **Date** | Valid from datetime in UTC timezone. | 
**expiresAtUtc** | **Date** | Datetime of expiry in UTC timezone. | [optional] 
**metadata** | **[String: String]** | Metadata. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


