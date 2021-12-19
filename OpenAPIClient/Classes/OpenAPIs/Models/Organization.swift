//
// Organization.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Organization: Codable, Hashable {

    public var createdBy: UUID?
    public var createdAtUtc: Date?
    public var updatedBy: UUID?
    public var updatedAtUtc: Date?
    public var createdByUser: ApplicationUser?
    public var updatedByUser: ApplicationUser?
    public var deletedBy: UUID?
    public var deletedAtUtc: Date?
    public var deletedByUser: ApplicationUser?
    public var id: UUID?
    public var dataPartnerId: String?
    public var typeId: UUID?
    public var categoryId: UUID?
    public var documentProviderCategoryId: UUID?
    public var name: String?
    public var regulatorName: String?
    public var brandName: String?
    public var authorizedPersonnelTaxId: String?
    public var authorizedPersonnelName: String?
    public var registrationId: String?
    public var vatId: String?
    public var taxId: String?
    public var description: String?
    public var logoUrl: String?
    public var contactEmail: String?
    public var phoneNumber: String?
    public var countryId: UUID?
    public var stateId: UUID?
    public var status: OrganizationStatus?
    public var companyCode: String?
    public var privacyPolicyUrl: String?
    public var termsOfServiceUrl: String?
    public var websiteUrl: String?
    public var isGovernmentOrganization: Bool?
    public var dlApiKey: String?
    public var isKyoCompleted: Bool?
    public var isEnabled: Bool?
    public var isDataProvider: Bool?
    public var isDataConsumer: Bool?
    public var submittedAtUtc: Date?
    public var approvedBy: UUID?
    public var approvedAtUtc: Date?
    public var isDigiLockerOrganization: Bool?
    public var isMdmcMaintained: Bool?
    public var isBbps: Bool?
    public var metaData: OrganizationMetaData?
    public var countryCode: String?
    public var organizationType: OrganizationType?
    public var organizationCategory: OrganizationCategory?
    public var documentProviderCategory: DocumentProviderCategory?
    public var addresses: [OrganizationAddress]?
    public var financialAccounts: [OrganizationFinancialAccount]?
    public var countryState: Country?
    public var approvedByUser: ApplicationUser?
    public var kyoDocuments: [OrganizationKyoDocument]?
    public var isDelete: Bool?
    public var recoveryToken: UUID?

    public init(createdBy: UUID? = nil, createdAtUtc: Date? = nil, updatedBy: UUID? = nil, updatedAtUtc: Date? = nil, createdByUser: ApplicationUser? = nil, updatedByUser: ApplicationUser? = nil, deletedBy: UUID? = nil, deletedAtUtc: Date? = nil, deletedByUser: ApplicationUser? = nil, id: UUID? = nil, dataPartnerId: String? = nil, typeId: UUID? = nil, categoryId: UUID? = nil, documentProviderCategoryId: UUID? = nil, name: String? = nil, regulatorName: String? = nil, brandName: String? = nil, authorizedPersonnelTaxId: String? = nil, authorizedPersonnelName: String? = nil, registrationId: String? = nil, vatId: String? = nil, taxId: String? = nil, description: String? = nil, logoUrl: String? = nil, contactEmail: String? = nil, phoneNumber: String? = nil, countryId: UUID? = nil, stateId: UUID? = nil, status: OrganizationStatus? = nil, companyCode: String? = nil, privacyPolicyUrl: String? = nil, termsOfServiceUrl: String? = nil, websiteUrl: String? = nil, isGovernmentOrganization: Bool? = nil, dlApiKey: String? = nil, isKyoCompleted: Bool? = nil, isEnabled: Bool? = nil, isDataProvider: Bool? = nil, isDataConsumer: Bool? = nil, submittedAtUtc: Date? = nil, approvedBy: UUID? = nil, approvedAtUtc: Date? = nil, isDigiLockerOrganization: Bool? = nil, isMdmcMaintained: Bool? = nil, isBbps: Bool? = nil, metaData: OrganizationMetaData? = nil, countryCode: String? = nil, organizationType: OrganizationType? = nil, organizationCategory: OrganizationCategory? = nil, documentProviderCategory: DocumentProviderCategory? = nil, addresses: [OrganizationAddress]? = nil, financialAccounts: [OrganizationFinancialAccount]? = nil, countryState: Country? = nil, approvedByUser: ApplicationUser? = nil, kyoDocuments: [OrganizationKyoDocument]? = nil, isDelete: Bool? = nil, recoveryToken: UUID? = nil) {
        self.createdBy = createdBy
        self.createdAtUtc = createdAtUtc
        self.updatedBy = updatedBy
        self.updatedAtUtc = updatedAtUtc
        self.createdByUser = createdByUser
        self.updatedByUser = updatedByUser
        self.deletedBy = deletedBy
        self.deletedAtUtc = deletedAtUtc
        self.deletedByUser = deletedByUser
        self.id = id
        self.dataPartnerId = dataPartnerId
        self.typeId = typeId
        self.categoryId = categoryId
        self.documentProviderCategoryId = documentProviderCategoryId
        self.name = name
        self.regulatorName = regulatorName
        self.brandName = brandName
        self.authorizedPersonnelTaxId = authorizedPersonnelTaxId
        self.authorizedPersonnelName = authorizedPersonnelName
        self.registrationId = registrationId
        self.vatId = vatId
        self.taxId = taxId
        self.description = description
        self.logoUrl = logoUrl
        self.contactEmail = contactEmail
        self.phoneNumber = phoneNumber
        self.countryId = countryId
        self.stateId = stateId
        self.status = status
        self.companyCode = companyCode
        self.privacyPolicyUrl = privacyPolicyUrl
        self.termsOfServiceUrl = termsOfServiceUrl
        self.websiteUrl = websiteUrl
        self.isGovernmentOrganization = isGovernmentOrganization
        self.dlApiKey = dlApiKey
        self.isKyoCompleted = isKyoCompleted
        self.isEnabled = isEnabled
        self.isDataProvider = isDataProvider
        self.isDataConsumer = isDataConsumer
        self.submittedAtUtc = submittedAtUtc
        self.approvedBy = approvedBy
        self.approvedAtUtc = approvedAtUtc
        self.isDigiLockerOrganization = isDigiLockerOrganization
        self.isMdmcMaintained = isMdmcMaintained
        self.isBbps = isBbps
        self.metaData = metaData
        self.countryCode = countryCode
        self.organizationType = organizationType
        self.organizationCategory = organizationCategory
        self.documentProviderCategory = documentProviderCategory
        self.addresses = addresses
        self.financialAccounts = financialAccounts
        self.countryState = countryState
        self.approvedByUser = approvedByUser
        self.kyoDocuments = kyoDocuments
        self.isDelete = isDelete
        self.recoveryToken = recoveryToken
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case createdBy
        case createdAtUtc
        case updatedBy
        case updatedAtUtc
        case createdByUser
        case updatedByUser
        case deletedBy
        case deletedAtUtc
        case deletedByUser
        case id
        case dataPartnerId
        case typeId
        case categoryId
        case documentProviderCategoryId
        case name
        case regulatorName
        case brandName
        case authorizedPersonnelTaxId
        case authorizedPersonnelName
        case registrationId
        case vatId
        case taxId
        case description
        case logoUrl
        case contactEmail
        case phoneNumber
        case countryId
        case stateId
        case status
        case companyCode
        case privacyPolicyUrl
        case termsOfServiceUrl
        case websiteUrl
        case isGovernmentOrganization
        case dlApiKey
        case isKyoCompleted
        case isEnabled
        case isDataProvider
        case isDataConsumer
        case submittedAtUtc
        case approvedBy
        case approvedAtUtc
        case isDigiLockerOrganization
        case isMdmcMaintained
        case isBbps
        case metaData
        case countryCode
        case organizationType
        case organizationCategory
        case documentProviderCategory
        case addresses
        case financialAccounts
        case countryState
        case approvedByUser
        case kyoDocuments
        case isDelete
        case recoveryToken
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(createdBy, forKey: .createdBy)
        try container.encodeIfPresent(createdAtUtc, forKey: .createdAtUtc)
        try container.encodeIfPresent(updatedBy, forKey: .updatedBy)
        try container.encodeIfPresent(updatedAtUtc, forKey: .updatedAtUtc)
        try container.encodeIfPresent(createdByUser, forKey: .createdByUser)
        try container.encodeIfPresent(updatedByUser, forKey: .updatedByUser)
        try container.encodeIfPresent(deletedBy, forKey: .deletedBy)
        try container.encodeIfPresent(deletedAtUtc, forKey: .deletedAtUtc)
        try container.encodeIfPresent(deletedByUser, forKey: .deletedByUser)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(dataPartnerId, forKey: .dataPartnerId)
        try container.encodeIfPresent(typeId, forKey: .typeId)
        try container.encodeIfPresent(categoryId, forKey: .categoryId)
        try container.encodeIfPresent(documentProviderCategoryId, forKey: .documentProviderCategoryId)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(regulatorName, forKey: .regulatorName)
        try container.encodeIfPresent(brandName, forKey: .brandName)
        try container.encodeIfPresent(authorizedPersonnelTaxId, forKey: .authorizedPersonnelTaxId)
        try container.encodeIfPresent(authorizedPersonnelName, forKey: .authorizedPersonnelName)
        try container.encodeIfPresent(registrationId, forKey: .registrationId)
        try container.encodeIfPresent(vatId, forKey: .vatId)
        try container.encodeIfPresent(taxId, forKey: .taxId)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(logoUrl, forKey: .logoUrl)
        try container.encodeIfPresent(contactEmail, forKey: .contactEmail)
        try container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
        try container.encodeIfPresent(countryId, forKey: .countryId)
        try container.encodeIfPresent(stateId, forKey: .stateId)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(companyCode, forKey: .companyCode)
        try container.encodeIfPresent(privacyPolicyUrl, forKey: .privacyPolicyUrl)
        try container.encodeIfPresent(termsOfServiceUrl, forKey: .termsOfServiceUrl)
        try container.encodeIfPresent(websiteUrl, forKey: .websiteUrl)
        try container.encodeIfPresent(isGovernmentOrganization, forKey: .isGovernmentOrganization)
        try container.encodeIfPresent(dlApiKey, forKey: .dlApiKey)
        try container.encodeIfPresent(isKyoCompleted, forKey: .isKyoCompleted)
        try container.encodeIfPresent(isEnabled, forKey: .isEnabled)
        try container.encodeIfPresent(isDataProvider, forKey: .isDataProvider)
        try container.encodeIfPresent(isDataConsumer, forKey: .isDataConsumer)
        try container.encodeIfPresent(submittedAtUtc, forKey: .submittedAtUtc)
        try container.encodeIfPresent(approvedBy, forKey: .approvedBy)
        try container.encodeIfPresent(approvedAtUtc, forKey: .approvedAtUtc)
        try container.encodeIfPresent(isDigiLockerOrganization, forKey: .isDigiLockerOrganization)
        try container.encodeIfPresent(isMdmcMaintained, forKey: .isMdmcMaintained)
        try container.encodeIfPresent(isBbps, forKey: .isBbps)
        try container.encodeIfPresent(metaData, forKey: .metaData)
        try container.encodeIfPresent(countryCode, forKey: .countryCode)
        try container.encodeIfPresent(organizationType, forKey: .organizationType)
        try container.encodeIfPresent(organizationCategory, forKey: .organizationCategory)
        try container.encodeIfPresent(documentProviderCategory, forKey: .documentProviderCategory)
        try container.encodeIfPresent(addresses, forKey: .addresses)
        try container.encodeIfPresent(financialAccounts, forKey: .financialAccounts)
        try container.encodeIfPresent(countryState, forKey: .countryState)
        try container.encodeIfPresent(approvedByUser, forKey: .approvedByUser)
        try container.encodeIfPresent(kyoDocuments, forKey: .kyoDocuments)
        try container.encodeIfPresent(isDelete, forKey: .isDelete)
        try container.encodeIfPresent(recoveryToken, forKey: .recoveryToken)
    }
}

