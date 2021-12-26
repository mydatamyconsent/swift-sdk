# DataProcessingAgreementsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1DataAgreementsGet**](DataProcessingAgreementsAPI.md#v1dataagreementsget) | **GET** /v1/data-agreements | Get all data processing agreements.
[**v1DataAgreementsIdDelete**](DataProcessingAgreementsAPI.md#v1dataagreementsiddelete) | **DELETE** /v1/data-agreements/{id} | Delete a data processing agreement. This will not delete a published or a agreement in use with consents.
[**v1DataAgreementsIdGet**](DataProcessingAgreementsAPI.md#v1dataagreementsidget) | **GET** /v1/data-agreements/{id} | Get data processing agreement by Id.
[**v1DataAgreementsIdPut**](DataProcessingAgreementsAPI.md#v1dataagreementsidput) | **PUT** /v1/data-agreements/{id} | Update a data processing agreement.
[**v1DataAgreementsIdTerminatePut**](DataProcessingAgreementsAPI.md#v1dataagreementsidterminateput) | **PUT** /v1/data-agreements/{id}/terminate | Terminate a data processing agreement.
[**v1DataAgreementsPost**](DataProcessingAgreementsAPI.md#v1dataagreementspost) | **POST** /v1/data-agreements | Create a data processing agreement.


# **v1DataAgreementsGet**
```swift
    open class func v1DataAgreementsGet(pageNo: Int? = nil, pageSize: Int? = nil, completion: @escaping (_ data: DataProcessingAgreementPaginatedList?, _ error: Error?) -> Void)
```

Get all data processing agreements.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let pageNo = 987 // Int | Page number. (optional) (default to 1)
let pageSize = 987 // Int | Number of items to return. (optional) (default to 25)

// Get all data processing agreements.
DataProcessingAgreementsAPI.v1DataAgreementsGet(pageNo: pageNo, pageSize: pageSize) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageNo** | **Int** | Page number. | [optional] [default to 1]
 **pageSize** | **Int** | Number of items to return. | [optional] [default to 25]

### Return type

[**DataProcessingAgreementPaginatedList**](DataProcessingAgreementPaginatedList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1DataAgreementsIdDelete**
```swift
    open class func v1DataAgreementsIdDelete(id: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a data processing agreement. This will not delete a published or a agreement in use with consents.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let id = 987 // UUID | 

// Delete a data processing agreement. This will not delete a published or a agreement in use with consents.
DataProcessingAgreementsAPI.v1DataAgreementsIdDelete(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**UUID**](.md) |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1DataAgreementsIdGet**
```swift
    open class func v1DataAgreementsIdGet(id: UUID, completion: @escaping (_ data: DataProcessingAgreement?, _ error: Error?) -> Void)
```

Get data processing agreement by Id.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let id = 987 // UUID | 

// Get data processing agreement by Id.
DataProcessingAgreementsAPI.v1DataAgreementsIdGet(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**UUID**](.md) |  | 

### Return type

[**DataProcessingAgreement**](DataProcessingAgreement.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1DataAgreementsIdPut**
```swift
    open class func v1DataAgreementsIdPut(id: UUID, dataProcessingAgreement: DataProcessingAgreement? = nil, completion: @escaping (_ data: DataProcessingAgreement?, _ error: Error?) -> Void)
```

Update a data processing agreement.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let id = 987 // UUID | 
let dataProcessingAgreement = DataProcessingAgreement(createdBy: 123, createdAtUtc: Date(), updatedBy: 123, updatedAtUtc: Date(), createdByUser: ApplicationUser(id: 123, userName: "userName_example", normalizedUserName: "normalizedUserName_example", email: "email_example", normalizedEmail: "normalizedEmail_example", emailConfirmed: false, passwordHash: "passwordHash_example", securityStamp: "securityStamp_example", concurrencyStamp: "concurrencyStamp_example", phoneNumber: "phoneNumber_example", phoneNumberConfirmed: false, twoFactorEnabled: false, lockoutEnd: Date(), lockoutEnabled: false, accessFailedCount: 123, firstName: "firstName_example", middleName: "middleName_example", lastName: "lastName_example", fullName: "fullName_example", gender: Gender(), dateOfBirth: Date(), countryId: 123, postCode: "postCode_example", referredBy: 123, language: "language_example", theme: Theme(), designation: "designation_example", isMarkedForDeletion: false, hardDeleteDate: Date(), securityPin: "securityPin_example", photoUrl: "photoUrl_example", referralCode: "referralCode_example", recoveryToken: "recoveryToken_example", digiLockerLastSyncDate: Date(), refreshTokens: [RefreshToken(createdBy: 123, createdAtUtc: Date(), updatedBy: 123, updatedAtUtc: Date(), createdByUser: nil, updatedByUser: nil, deletedBy: 123, deletedAtUtc: Date(), deletedByUser: nil, id: 123, installationId: "installationId_example", token: "token_example", accessToken: "accessToken_example", accessTokenExpires: Date(), expires: Date(), isExpired: false, created: Date(), revoked: Date(), isActive: false, userId: 123, user: nil)], country: Country(id: 123, name: "name_example", iso3: "iso3_example", iso2: "iso2_example", phoneCode: "phoneCode_example", capital: "capital_example", currencyCode: "currencyCode_example", currencySymbol: "currencySymbol_example", flagUrl: "flagUrl_example", states: [CountryState(id: 123, countryId: 123, name: "name_example", fipsCode: 123, country: nil)]), referredByUser: nil), updatedByUser: nil, deletedBy: 123, deletedAtUtc: Date(), deletedByUser: nil, id: 123, organizationId: 123, version: "version_example", body: "body_example", attachmentUrl: "attachmentUrl_example", organization: Organization(createdBy: 123, createdAtUtc: Date(), updatedBy: 123, updatedAtUtc: Date(), createdByUser: nil, updatedByUser: nil, deletedBy: 123, deletedAtUtc: Date(), deletedByUser: nil, id: 123, dataPartnerId: "dataPartnerId_example", typeId: 123, categoryId: 123, documentProviderCategoryId: 123, name: "name_example", regulatorName: "regulatorName_example", brandName: "brandName_example", authorizedPersonnelTaxId: "authorizedPersonnelTaxId_example", authorizedPersonnelName: "authorizedPersonnelName_example", authorizedPersonnelKycDocumentType: AuthorizedPersonnelKycDocumentType(), registrationId: "registrationId_example", vatId: "vatId_example", taxId: "taxId_example", description: "description_example", logoUrl: "logoUrl_example", contactEmail: "contactEmail_example", phoneNumber: "phoneNumber_example", countryId: 123, stateId: 123, status: OrganizationStatus(), companyCode: "companyCode_example", privacyPolicyUrl: "privacyPolicyUrl_example", termsOfServiceUrl: "termsOfServiceUrl_example", websiteUrl: "websiteUrl_example", helpLineNumber: "helpLineNumber_example", supportEmail: "supportEmail_example", isGovernmentOrganization: false, dlApiKey: "dlApiKey_example", isKyoCompleted: false, isEnabled: false, isDataProvider: false, isDataConsumer: false, submittedAtUtc: Date(), approvedBy: 123, approvedAtUtc: Date(), isDigiLockerOrganization: false, isMdmcMaintained: false, isBbps: false, metaData: OrganizationMetaData(digiLockerMetadata: "TODO"), countryCode: "countryCode_example", organizationType: OrganizationType(id: 123, countryId: 123, typeName: "typeName_example", elfCode: "elfCode_example", country: nil), organizationCategory: OrganizationCategory(createdBy: 123, createdAtUtc: Date(), updatedBy: 123, updatedAtUtc: Date(), createdByUser: nil, updatedByUser: nil, deletedBy: 123, deletedAtUtc: Date(), deletedByUser: nil, id: 123, name: "name_example", logoUrl: "logoUrl_example", metaData: "TODO"), documentProviderCategory: DocumentProviderCategory(createdBy: 123, createdAtUtc: Date(), updatedBy: 123, updatedAtUtc: Date(), createdByUser: nil, updatedByUser: nil, deletedBy: 123, deletedAtUtc: Date(), deletedByUser: nil, id: 123, name: "name_example", iconCodePoint: 123, iconFontFamily: CategoryIconFontFamily(), metaData: "TODO"), addresses: [OrganizationAddress(createdBy: 123, createdAtUtc: Date(), updatedBy: 123, updatedAtUtc: Date(), createdByUser: nil, updatedByUser: nil, deletedBy: 123, deletedAtUtc: Date(), deletedByUser: nil, id: 123, organizationId: 123, organizationName: "organizationName_example", type: OrganizationAddressType(), addressLine1: "addressLine1_example", addressLine2: "addressLine2_example", landMark: "landMark_example", countryId: 123, stateId: 123, city: "city_example", postCode: "postCode_example", proofDocumentType: ProofDocumentType(), proofDocumentUrl: "proofDocumentUrl_example", country: nil, organization: nil, countryState: nil, isPrimary: false, isVerified: false)], financialAccounts: [OrganizationFinancialAccount(id: 123, organizationId: 123, beneficiaryName: "beneficiaryName_example", accountNumber: "accountNumber_example", routingNumber: "routingNumber_example", organization: nil, isPrimary: false, isVerified: false, logoUrl: "logoUrl_example", bankName: "bankName_example", bankAccountProofUrl: "bankAccountProofUrl_example", fileType: FileType(), bankAccountType: BankAccountType())], countryState: nil, approvedByUser: nil, kyoDocuments: [OrganizationKyoDocument(id: 123, organizationId: 123, documentName: "documentName_example", storageUrl: "storageUrl_example", uploadedAtUtc: Date(), verifiedBy: 123, verifiedAtUtc: Date(), deletedBy: 123, deletedAtUtc: Date(), organization: nil, verifiedByUser: nil, deletedByUser: nil, rejection: Rejection(reason: "reason_example", rejectedBy: 123, rejectedAtUtc: Date()))], isDelete: false, recoveryToken: 123)) // DataProcessingAgreement |  (optional)

// Update a data processing agreement.
DataProcessingAgreementsAPI.v1DataAgreementsIdPut(id: id, dataProcessingAgreement: dataProcessingAgreement) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**UUID**](.md) |  | 
 **dataProcessingAgreement** | [**DataProcessingAgreement**](DataProcessingAgreement.md) |  | [optional] 

### Return type

[**DataProcessingAgreement**](DataProcessingAgreement.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1DataAgreementsIdTerminatePut**
```swift
    open class func v1DataAgreementsIdTerminatePut(id: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Terminate a data processing agreement.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let id = 987 // UUID | 

// Terminate a data processing agreement.
DataProcessingAgreementsAPI.v1DataAgreementsIdTerminatePut(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**UUID**](.md) |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1DataAgreementsPost**
```swift
    open class func v1DataAgreementsPost(dataProcessingAgreement: DataProcessingAgreement? = nil, completion: @escaping (_ data: DataProcessingAgreement?, _ error: Error?) -> Void)
```

Create a data processing agreement.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import MyDataMyConsent

let dataProcessingAgreement = DataProcessingAgreement(createdBy: 123, createdAtUtc: Date(), updatedBy: 123, updatedAtUtc: Date(), createdByUser: ApplicationUser(id: 123, userName: "userName_example", normalizedUserName: "normalizedUserName_example", email: "email_example", normalizedEmail: "normalizedEmail_example", emailConfirmed: false, passwordHash: "passwordHash_example", securityStamp: "securityStamp_example", concurrencyStamp: "concurrencyStamp_example", phoneNumber: "phoneNumber_example", phoneNumberConfirmed: false, twoFactorEnabled: false, lockoutEnd: Date(), lockoutEnabled: false, accessFailedCount: 123, firstName: "firstName_example", middleName: "middleName_example", lastName: "lastName_example", fullName: "fullName_example", gender: Gender(), dateOfBirth: Date(), countryId: 123, postCode: "postCode_example", referredBy: 123, language: "language_example", theme: Theme(), designation: "designation_example", isMarkedForDeletion: false, hardDeleteDate: Date(), securityPin: "securityPin_example", photoUrl: "photoUrl_example", referralCode: "referralCode_example", recoveryToken: "recoveryToken_example", digiLockerLastSyncDate: Date(), refreshTokens: [RefreshToken(createdBy: 123, createdAtUtc: Date(), updatedBy: 123, updatedAtUtc: Date(), createdByUser: nil, updatedByUser: nil, deletedBy: 123, deletedAtUtc: Date(), deletedByUser: nil, id: 123, installationId: "installationId_example", token: "token_example", accessToken: "accessToken_example", accessTokenExpires: Date(), expires: Date(), isExpired: false, created: Date(), revoked: Date(), isActive: false, userId: 123, user: nil)], country: Country(id: 123, name: "name_example", iso3: "iso3_example", iso2: "iso2_example", phoneCode: "phoneCode_example", capital: "capital_example", currencyCode: "currencyCode_example", currencySymbol: "currencySymbol_example", flagUrl: "flagUrl_example", states: [CountryState(id: 123, countryId: 123, name: "name_example", fipsCode: 123, country: nil)]), referredByUser: nil), updatedByUser: nil, deletedBy: 123, deletedAtUtc: Date(), deletedByUser: nil, id: 123, organizationId: 123, version: "version_example", body: "body_example", attachmentUrl: "attachmentUrl_example", organization: Organization(createdBy: 123, createdAtUtc: Date(), updatedBy: 123, updatedAtUtc: Date(), createdByUser: nil, updatedByUser: nil, deletedBy: 123, deletedAtUtc: Date(), deletedByUser: nil, id: 123, dataPartnerId: "dataPartnerId_example", typeId: 123, categoryId: 123, documentProviderCategoryId: 123, name: "name_example", regulatorName: "regulatorName_example", brandName: "brandName_example", authorizedPersonnelTaxId: "authorizedPersonnelTaxId_example", authorizedPersonnelName: "authorizedPersonnelName_example", authorizedPersonnelKycDocumentType: AuthorizedPersonnelKycDocumentType(), registrationId: "registrationId_example", vatId: "vatId_example", taxId: "taxId_example", description: "description_example", logoUrl: "logoUrl_example", contactEmail: "contactEmail_example", phoneNumber: "phoneNumber_example", countryId: 123, stateId: 123, status: OrganizationStatus(), companyCode: "companyCode_example", privacyPolicyUrl: "privacyPolicyUrl_example", termsOfServiceUrl: "termsOfServiceUrl_example", websiteUrl: "websiteUrl_example", helpLineNumber: "helpLineNumber_example", supportEmail: "supportEmail_example", isGovernmentOrganization: false, dlApiKey: "dlApiKey_example", isKyoCompleted: false, isEnabled: false, isDataProvider: false, isDataConsumer: false, submittedAtUtc: Date(), approvedBy: 123, approvedAtUtc: Date(), isDigiLockerOrganization: false, isMdmcMaintained: false, isBbps: false, metaData: OrganizationMetaData(digiLockerMetadata: "TODO"), countryCode: "countryCode_example", organizationType: OrganizationType(id: 123, countryId: 123, typeName: "typeName_example", elfCode: "elfCode_example", country: nil), organizationCategory: OrganizationCategory(createdBy: 123, createdAtUtc: Date(), updatedBy: 123, updatedAtUtc: Date(), createdByUser: nil, updatedByUser: nil, deletedBy: 123, deletedAtUtc: Date(), deletedByUser: nil, id: 123, name: "name_example", logoUrl: "logoUrl_example", metaData: "TODO"), documentProviderCategory: DocumentProviderCategory(createdBy: 123, createdAtUtc: Date(), updatedBy: 123, updatedAtUtc: Date(), createdByUser: nil, updatedByUser: nil, deletedBy: 123, deletedAtUtc: Date(), deletedByUser: nil, id: 123, name: "name_example", iconCodePoint: 123, iconFontFamily: CategoryIconFontFamily(), metaData: "TODO"), addresses: [OrganizationAddress(createdBy: 123, createdAtUtc: Date(), updatedBy: 123, updatedAtUtc: Date(), createdByUser: nil, updatedByUser: nil, deletedBy: 123, deletedAtUtc: Date(), deletedByUser: nil, id: 123, organizationId: 123, organizationName: "organizationName_example", type: OrganizationAddressType(), addressLine1: "addressLine1_example", addressLine2: "addressLine2_example", landMark: "landMark_example", countryId: 123, stateId: 123, city: "city_example", postCode: "postCode_example", proofDocumentType: ProofDocumentType(), proofDocumentUrl: "proofDocumentUrl_example", country: nil, organization: nil, countryState: nil, isPrimary: false, isVerified: false)], financialAccounts: [OrganizationFinancialAccount(id: 123, organizationId: 123, beneficiaryName: "beneficiaryName_example", accountNumber: "accountNumber_example", routingNumber: "routingNumber_example", organization: nil, isPrimary: false, isVerified: false, logoUrl: "logoUrl_example", bankName: "bankName_example", bankAccountProofUrl: "bankAccountProofUrl_example", fileType: FileType(), bankAccountType: BankAccountType())], countryState: nil, approvedByUser: nil, kyoDocuments: [OrganizationKyoDocument(id: 123, organizationId: 123, documentName: "documentName_example", storageUrl: "storageUrl_example", uploadedAtUtc: Date(), verifiedBy: 123, verifiedAtUtc: Date(), deletedBy: 123, deletedAtUtc: Date(), organization: nil, verifiedByUser: nil, deletedByUser: nil, rejection: Rejection(reason: "reason_example", rejectedBy: 123, rejectedAtUtc: Date()))], isDelete: false, recoveryToken: 123)) // DataProcessingAgreement |  (optional)

// Create a data processing agreement.
DataProcessingAgreementsAPI.v1DataAgreementsPost(dataProcessingAgreement: dataProcessingAgreement) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataProcessingAgreement** | [**DataProcessingAgreement**](DataProcessingAgreement.md) |  | [optional] 

### Return type

[**DataProcessingAgreement**](DataProcessingAgreement.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

