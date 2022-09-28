# DocumentIssueRequestDetails

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Document issue request Id. | 
**documentTypeId** | **String** | Document type Id. | 
**typeName** | **String** | Document type name. | 
**identifier** | **String** | Document identifier. | 
**status** | [**DocumentIssueRequestStatus**](DocumentIssueRequestStatus.md) |  | 
**description** | **String** | Document description. | 
**receiver** | [**DocumentIssueRequestDetailsReceiver**](DocumentIssueRequestDetailsReceiver.md) |  | 
**paymentRequest** | [**PaymentRequest**](PaymentRequest.md) |  | [optional] 
**issuedAtUtc** | **Date** | Datetime of issue in UTC timezone. | 
**validFromUtc** | **Date** | Valid from datetime in UTC timezone. | 
**expiresAtUtc** | **Date** | Datetime of expiry in UTC timezone. | [optional] 
**metaData** | [**AnyCodable**](.md) | Metadata. | [optional] 
**createdAtUtc** | **Date** | Creation datetime of issue request in UTC timezone. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


