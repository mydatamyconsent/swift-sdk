# IssuedDocumentDetails

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** | Document Id. | 
**identifier** | **String** | Document Identifier. | 
**documentType** | **String** | Document type name. | 
**issuedTo** | **String** | User name. | 
**issuedAtUtc** | **Date** | Issued datetime in UTC timezone. | 
**expiresAtUtc** | **Date** | Expires datetime in UTC timezone. | [optional] 
**acceptedAtUtc** | **Date** | Accepted datetime in UTC timezone. | [optional] 
**receiver** | [**DocumentReceiver**](DocumentReceiver.md) |  | 
**metadata** | **[String: String]** | Metadata. | [optional] 
**digitalSignatures** | [DocumentDigitalSignature] | Digital signatures. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


