# Swift5 API client for MyDataMyConsent

Unleashing the power of data consent by establishing trust. The Platform Core Developer API defines a set of capabilities that can be used to request, issue, manage and update data, documents and credentials by organizations. The API can be used to request, manage and update Decentralised Identifiers, Financial Data, Health Data issue Documents, Credentials directly or using OpenID Connect flows, and verify Messages signed with DIDs and much more.

## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project.  By using the [openapi-spec](https://github.com/OAI/OpenAPI-Specification) from a remote server, you can easily generate an API client.

- API version: v1
- Package version: 
- Build package: org.openapitools.codegen.languages.Swift5ClientCodegen
For more information, please visit [https://mydatamyconsent.com/en-us/developers](https://mydatamyconsent.com/en-us/developers)

## Installation

### Carthage

Run `carthage update`

### CocoaPods

Run `pod install`

## Documentation for API Endpoints

All URIs are relative to *https://api.mydatamyconsent.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*DataConsentRequestsAPI* | [**cancelIndividualDataConsentRequest**](docs/DataConsentRequestsAPI.md#cancelindividualdataconsentrequest) | **PUT** /v1/consent-requests/individual/{requestId}/cancel | Cancel the individual data consent request by Id.
*DataConsentRequestsAPI* | [**cancelOrganizationDataConsentRequest**](docs/DataConsentRequestsAPI.md#cancelorganizationdataconsentrequest) | **PUT** /v1/consent-requests/organization/{requestId}/cancel | Cancel the organization data consent request by Id.
*DataConsentRequestsAPI* | [**createIndividualDataConsentRequest**](docs/DataConsentRequestsAPI.md#createindividualdataconsentrequest) | **POST** /v1/consent-requests/individual | Create data consent request for an individual.
*DataConsentRequestsAPI* | [**createOrganizationDataConsentRequest**](docs/DataConsentRequestsAPI.md#createorganizationdataconsentrequest) | **POST** /v1/consent-requests/organization | Create data consent request for an organization.
*DataConsentRequestsAPI* | [**getAllConsentRequestsToIndividuals**](docs/DataConsentRequestsAPI.md#getallconsentrequeststoindividuals) | **GET** /v1/consent-requests/individuals | Get all Consent Requests sent to individuals.
*DataConsentRequestsAPI* | [**getAllConsentRequestsToOrganizations**](docs/DataConsentRequestsAPI.md#getallconsentrequeststoorganizations) | **GET** /v1/consent-requests/organizations | Get all Consent Requests sent to organizations.
*DataConsentRequestsAPI* | [**getIndividualConsentRequestById**](docs/DataConsentRequestsAPI.md#getindividualconsentrequestbyid) | **GET** /v1/consent-requests/individuals/{requestId} | Get individual data consent request by id.
*DataConsentRequestsAPI* | [**getOrganizationConsentRequestById**](docs/DataConsentRequestsAPI.md#getorganizationconsentrequestbyid) | **GET** /v1/consent-requests/organizations/{requestId} | Get a OrganizationConsent Request by Id.
*DataConsentsAPI* | [**downloadConsentedDocumentAnalysis**](docs/DataConsentsAPI.md#downloadconsenteddocumentanalysis) | **GET** /v1/consents/{consentId}/documents/{documentId}/analysis | Get analysis of a consented document.
*DataConsentsAPI* | [**downloadIndividualConsentedDocumentById**](docs/DataConsentsAPI.md#downloadindividualconsenteddocumentbyid) | **GET** /v1/consents/individuals/{consentId}/documents/{documentId}/download | Download individual consented document by document id.
*DataConsentsAPI* | [**downloadOrganizationConsentedDocumentById**](docs/DataConsentsAPI.md#downloadorganizationconsenteddocumentbyid) | **GET** /v1/consents/organizations/{consentId}/documents/{documentId}/download | Download organization consent document based on document id.
*DataConsentsAPI* | [**getAllConsentedFinancialAccounts**](docs/DataConsentsAPI.md#getallconsentedfinancialaccounts) | **GET** /v1/consents/individuals/{consentId}/financial-accounts | Get all individual consented financial accounts.
*DataConsentsAPI* | [**getConsentFinancialAccounts**](docs/DataConsentsAPI.md#getconsentfinancialaccounts) | **GET** /v1/consents/organizations/{consentId}/financial-accounts | Get all organizational consented financial accounts.
*DataConsentsAPI* | [**getConsentedAccountById**](docs/DataConsentsAPI.md#getconsentedaccountbyid) | **GET** /v1/consents/individuals/{consentId}/financial-accounts/{accountId} | Get individual consented financial account details based on account id.
*DataConsentsAPI* | [**getConsentedDocumentById**](docs/DataConsentsAPI.md#getconsenteddocumentbyid) | **GET** /v1/consents/individuals/{consentId}/documents/{documentId} | Get individual consented document by document id.
*DataConsentsAPI* | [**getConsentedFinancialAccount**](docs/DataConsentsAPI.md#getconsentedfinancialaccount) | **GET** /v1/consents/organizations/{consentId}/financial-accounts/{accountId} | Get organization consented financial account details based on account id.
*DataConsentsAPI* | [**getConsentedFinancialAccountInsights**](docs/DataConsentsAPI.md#getconsentedfinancialaccountinsights) | **GET** /v1/consents/{consentId}/financial-accounts/{accountId}/insights | Get consented financial account insights.
*DataConsentsAPI* | [**getConsentedFinancialAccountTransactions**](docs/DataConsentsAPI.md#getconsentedfinancialaccounttransactions) | **GET** /v1/consents/individuals/{consentId}/financial-accounts/{accountId}/transactions | Get individual consented financial account transactions of an individual based on accountId.
*DataConsentsAPI* | [**getConsents**](docs/DataConsentsAPI.md#getconsents) | **GET** /v1/consents/individuals | Get the paginated list of individual data consents.
*DataConsentsAPI* | [**getIndividualConsentedDocuments**](docs/DataConsentsAPI.md#getindividualconsenteddocuments) | **GET** /v1/consents/individuals/{consentId}/documents | Get individual consented documents by consent id.
*DataConsentsAPI* | [**getIndividualDataConsentById**](docs/DataConsentsAPI.md#getindividualdataconsentbyid) | **GET** /v1/consents/individuals/{consentId} | Get individuals data consent details by consent id.
*DataConsentsAPI* | [**getOrgConsentedAccountTransactions**](docs/DataConsentsAPI.md#getorgconsentedaccounttransactions) | **GET** /v1/consents/organizations/{consentId}/financial-accounts/{accountId}/transactions | Get organization consented financial account transactions of an individual based on accountId.
*DataConsentsAPI* | [**getOrganizationConsentedDocumentById**](docs/DataConsentsAPI.md#getorganizationconsenteddocumentbyid) | **GET** /v1/consents/organizations/{consentId}/documents/{documentId} | Get organization consent document based on document id.
*DataConsentsAPI* | [**getOrganizationConsentedDocuments**](docs/DataConsentsAPI.md#getorganizationconsenteddocuments) | **GET** /v1/consents/organizations/{consentId}/documents | Get organization consented documents by consent id.
*DataConsentsAPI* | [**getOrganizationDataConsentById**](docs/DataConsentsAPI.md#getorganizationdataconsentbyid) | **GET** /v1/consents/organizations/{consentId} | Get organizations data consent details by consent id.
*DataConsentsAPI* | [**getOrganizationDataConsents**](docs/DataConsentsAPI.md#getorganizationdataconsents) | **GET** /v1/consents/organizations | Get the paginated list of organization data consents.
*DataProcessingAgreementsAPI* | [**createDataProcessingAgreement**](docs/DataProcessingAgreementsAPI.md#createdataprocessingagreement) | **POST** /v1/data-agreements | Create a data processing agreement.
*DataProcessingAgreementsAPI* | [**deleteDataProcessingAgreementById**](docs/DataProcessingAgreementsAPI.md#deletedataprocessingagreementbyid) | **DELETE** /v1/data-agreements/{id} | Delete a data processing agreement. This will not delete a published or a agreement in use with consents.
*DataProcessingAgreementsAPI* | [**getDataProcessingAgreementById**](docs/DataProcessingAgreementsAPI.md#getdataprocessingagreementbyid) | **GET** /v1/data-agreements/{id} | Get data processing agreement by id.
*DataProcessingAgreementsAPI* | [**getDataProcessingAgreements**](docs/DataProcessingAgreementsAPI.md#getdataprocessingagreements) | **GET** /v1/data-agreements | Get paginated data processing agreements.
*DataProcessingAgreementsAPI* | [**terminateDataProcessingAgreementById**](docs/DataProcessingAgreementsAPI.md#terminatedataprocessingagreementbyid) | **PUT** /v1/data-agreements/{id}/terminate | Terminate a data processing agreement.
*DataProcessingAgreementsAPI* | [**updateDataProcessingAgreement**](docs/DataProcessingAgreementsAPI.md#updatedataprocessingagreement) | **PUT** /v1/data-agreements/{id} | Update a data processing agreement.
*DataProviderDiscoveryAPI* | [**getDataProviderById**](docs/DataProviderDiscoveryAPI.md#getdataproviderbyid) | **GET** /v1/data-providers/{providerId} | Get a Data Provider details by provider id.
*DataProviderDiscoveryAPI* | [**getDataProviders**](docs/DataProviderDiscoveryAPI.md#getdataproviders) | **GET** /v1/data-providers | Discover all data providers in My Data My Consent by country and filters.
*DigiLockerCompatIssuerAPI* | [**digilockerCompatIssueDocument**](docs/DigiLockerCompatIssuerAPI.md#digilockercompatissuedocument) | **POST** /issuer/issuedoc/1/xml | Digilocker Compatible endpoint to issue document.
*DocumentsAPI* | [**getIssuedDocumentById**](docs/DocumentsAPI.md#getissueddocumentbyid) | **GET** /v1/documents/issued/{documentId} | Get issued document.
*DocumentsAPI* | [**getIssuedDocuments**](docs/DocumentsAPI.md#getissueddocuments) | **GET** /v1/documents/issued | Get paginated list of issued documents of given document type.
*DocumentsAPI* | [**getRegisteredDocumentTypes**](docs/DocumentsAPI.md#getregistereddocumenttypes) | **GET** /v1/documents/types | Get paginated list of registered document types.
*DocumentsAPI* | [**issueDocumentToIndividual**](docs/DocumentsAPI.md#issuedocumenttoindividual) | **POST** /v1/documents/issue/individual | Issue a new document to an individual user.
*DocumentsAPI* | [**issueDocumentToOrganization**](docs/DocumentsAPI.md#issuedocumenttoorganization) | **POST** /v1/documents/issue/organization | Issue a new document to an organization.
*DocumentsAPI* | [**uploadDocumentForIndividual**](docs/DocumentsAPI.md#uploaddocumentforindividual) | **POST** /v1/documents/issue/individual/upload/{issueRequestId} | Upload a document for issuance request of individual.
*DocumentsAPI* | [**uploadDocumentForOrganization**](docs/DocumentsAPI.md#uploaddocumentfororganization) | **POST** /v1/documents/issue/organization/upload/{issueRequestId} | Upload a document for issuance request of organization.
*SupportedIdentifiersAPI* | [**getAllSupportedIdentifiers**](docs/SupportedIdentifiersAPI.md#getallsupportedidentifiers) | **GET** /v1/supported-identifiers/{countryIso2Code} | Get all supported identifiers by country.


## Documentation For Models

 - [Activity](docs/Activity.md)
 - [ApprovedConsentRequest](docs/ApprovedConsentRequest.md)
 - [BankAccountType](docs/BankAccountType.md)
 - [CollectibleTypes](docs/CollectibleTypes.md)
 - [ConsentRequestReceiver](docs/ConsentRequestReceiver.md)
 - [CreateDataConsentRequest](docs/CreateDataConsentRequest.md)
 - [CreateDataProcessingAgreement](docs/CreateDataProcessingAgreement.md)
 - [DataConsent](docs/DataConsent.md)
 - [DataConsentDetails](docs/DataConsentDetails.md)
 - [DataConsentDetailsPaginatedList](docs/DataConsentDetailsPaginatedList.md)
 - [DataConsentDocument](docs/DataConsentDocument.md)
 - [DataConsentDocumentIssuer](docs/DataConsentDocumentIssuer.md)
 - [DataConsentFinancialsDto](docs/DataConsentFinancialsDto.md)
 - [DataConsentRequest](docs/DataConsentRequest.md)
 - [DataConsentRequestDetails](docs/DataConsentRequestDetails.md)
 - [DataConsentRequestedFinancialAccount](docs/DataConsentRequestedFinancialAccount.md)
 - [DataConsentStatus](docs/DataConsentStatus.md)
 - [DataProcessingAgreement](docs/DataProcessingAgreement.md)
 - [DataProcessingAgreementBase](docs/DataProcessingAgreementBase.md)
 - [DataProcessingAgreementPaginatedList](docs/DataProcessingAgreementPaginatedList.md)
 - [DataProtectionOfficer](docs/DataProtectionOfficer.md)
 - [DataProvider](docs/DataProvider.md)
 - [DataProviderPaginatedList](docs/DataProviderPaginatedList.md)
 - [DocumentCategoryType](docs/DocumentCategoryType.md)
 - [DocumentDigitalSignature](docs/DocumentDigitalSignature.md)
 - [DocumentIssueRequest](docs/DocumentIssueRequest.md)
 - [DocumentIssueRequestDetails](docs/DocumentIssueRequestDetails.md)
 - [DocumentIssueRequestStatus](docs/DocumentIssueRequestStatus.md)
 - [DocumentReceiver](docs/DocumentReceiver.md)
 - [DocumentSubCategoryType](docs/DocumentSubCategoryType.md)
 - [DocumentType](docs/DocumentType.md)
 - [DocumentTypePaginatedList](docs/DocumentTypePaginatedList.md)
 - [DocumentsRequired](docs/DocumentsRequired.md)
 - [FileType](docs/FileType.md)
 - [Financial](docs/Financial.md)
 - [FinancialAccount](docs/FinancialAccount.md)
 - [FinancialAccountDetailsRequired](docs/FinancialAccountDetailsRequired.md)
 - [FinancialAccounts](docs/FinancialAccounts.md)
 - [IdentificationStrategy](docs/IdentificationStrategy.md)
 - [Identifier](docs/Identifier.md)
 - [IndividualDataConsentRequestDetails](docs/IndividualDataConsentRequestDetails.md)
 - [IndividualDataConsentRequestDetailsPaginatedList](docs/IndividualDataConsentRequestDetailsPaginatedList.md)
 - [IssuedDocument](docs/IssuedDocument.md)
 - [IssuedDocumentDetails](docs/IssuedDocumentDetails.md)
 - [IssuedDocumentPaginatedList](docs/IssuedDocumentPaginatedList.md)
 - [Life](docs/Life.md)
 - [OrganizationDataConsentRequestDetails](docs/OrganizationDataConsentRequestDetails.md)
 - [OrganizationDataConsentRequestDetailsPaginatedList](docs/OrganizationDataConsentRequestDetailsPaginatedList.md)
 - [OrganizationFinancialAccountDto](docs/OrganizationFinancialAccountDto.md)
 - [OrganizationFinancialTransactionsDto](docs/OrganizationFinancialTransactionsDto.md)
 - [OrganizationFinancialTransactionsDtoPaginatedList](docs/OrganizationFinancialTransactionsDtoPaginatedList.md)
 - [PaymentRequest](docs/PaymentRequest.md)
 - [ProblemDetails](docs/ProblemDetails.md)
 - [PushUriRequest](docs/PushUriRequest.md)
 - [PushUriResponse](docs/PushUriResponse.md)
 - [SharedWith](docs/SharedWith.md)
 - [StringStringKeyValuePair](docs/StringStringKeyValuePair.md)
 - [SupportedEntityType](docs/SupportedEntityType.md)
 - [SupportedIdentifier](docs/SupportedIdentifier.md)
 - [UpdateDataProcessingAgreement](docs/UpdateDataProcessingAgreement.md)
 - [UriDetails](docs/UriDetails.md)
 - [UserAccountFinancialTransactionsDto](docs/UserAccountFinancialTransactionsDto.md)
 - [UserAccountFinancialTransactionsDtoPaginatedList](docs/UserAccountFinancialTransactionsDtoPaginatedList.md)


## Documentation For Authorization


## oauth2

- **Type**: OAuth
- **Flow**: application
- **Authorization URL**: https://accounts.mydatamyconsent.com/connect/authorize
- **Scopes**: 
 - **developer**: Developer API


## Author

support@mydatamyconsent.com

