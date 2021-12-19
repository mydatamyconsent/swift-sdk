# ApplicationUser

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** |  | [optional] 
**userName** | **String** |  | [optional] 
**normalizedUserName** | **String** |  | [optional] 
**email** | **String** |  | [optional] 
**normalizedEmail** | **String** |  | [optional] 
**emailConfirmed** | **Bool** |  | [optional] 
**passwordHash** | **String** |  | [optional] 
**securityStamp** | **String** |  | [optional] 
**concurrencyStamp** | **String** |  | [optional] 
**phoneNumber** | **String** |  | [optional] 
**phoneNumberConfirmed** | **Bool** |  | [optional] 
**twoFactorEnabled** | **Bool** |  | [optional] 
**lockoutEnd** | **Date** |  | [optional] 
**lockoutEnabled** | **Bool** |  | [optional] 
**accessFailedCount** | **Int** |  | [optional] 
**firstName** | **String** |  | [optional] 
**middleName** | **String** |  | [optional] 
**lastName** | **String** |  | [optional] 
**fullName** | **String** |  | [optional] [readonly] 
**gender** | [**Gender**](Gender.md) |  | [optional] 
**dateOfBirth** | **Date** |  | [optional] 
**countryId** | **UUID** |  | [optional] 
**postCode** | **String** |  | [optional] 
**referredBy** | **UUID** |  | [optional] 
**language** | **String** |  | [optional] 
**theme** | [**Theme**](Theme.md) |  | [optional] 
**designation** | **String** |  | [optional] 
**isMarkedForDeletion** | **Bool** |  | [optional] 
**hardDeleteDate** | **Date** |  | [optional] 
**securityPin** | **String** |  | [optional] 
**photoUrl** | **String** |  | [optional] 
**referralCode** | **String** |  | [optional] 
**recoveryToken** | **String** |  | [optional] 
**digiLockerLastSyncDate** | **Date** |  | [optional] 
**refreshTokens** | [RefreshToken] |  | [optional] 
**country** | [**Country**](Country.md) |  | [optional] 
**referredByUser** | [**ApplicationUser**](ApplicationUser.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


