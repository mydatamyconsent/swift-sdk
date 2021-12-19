//
// OrganizationFinancialAccount.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct OrganizationFinancialAccount: Codable, Hashable {

    public var id: UUID?
    public var organizationId: UUID?
    public var beneficiaryName: String?
    public var accountNumber: String?
    public var routingNumber: String?
    public var organization: Organization?
    public var isPrimary: Bool?
    public var isVerified: Bool?
    public var logoUrl: String?
    public var bankName: String?
    public var bankAccountProofUrl: String?
    public var fileType: FileType?
    public var bankAccountType: BankAccountType?

    public init(id: UUID? = nil, organizationId: UUID? = nil, beneficiaryName: String? = nil, accountNumber: String? = nil, routingNumber: String? = nil, organization: Organization? = nil, isPrimary: Bool? = nil, isVerified: Bool? = nil, logoUrl: String? = nil, bankName: String? = nil, bankAccountProofUrl: String? = nil, fileType: FileType? = nil, bankAccountType: BankAccountType? = nil) {
        self.id = id
        self.organizationId = organizationId
        self.beneficiaryName = beneficiaryName
        self.accountNumber = accountNumber
        self.routingNumber = routingNumber
        self.organization = organization
        self.isPrimary = isPrimary
        self.isVerified = isVerified
        self.logoUrl = logoUrl
        self.bankName = bankName
        self.bankAccountProofUrl = bankAccountProofUrl
        self.fileType = fileType
        self.bankAccountType = bankAccountType
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case organizationId
        case beneficiaryName
        case accountNumber
        case routingNumber
        case organization
        case isPrimary
        case isVerified
        case logoUrl
        case bankName
        case bankAccountProofUrl
        case fileType
        case bankAccountType
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(organizationId, forKey: .organizationId)
        try container.encodeIfPresent(beneficiaryName, forKey: .beneficiaryName)
        try container.encodeIfPresent(accountNumber, forKey: .accountNumber)
        try container.encodeIfPresent(routingNumber, forKey: .routingNumber)
        try container.encodeIfPresent(organization, forKey: .organization)
        try container.encodeIfPresent(isPrimary, forKey: .isPrimary)
        try container.encodeIfPresent(isVerified, forKey: .isVerified)
        try container.encodeIfPresent(logoUrl, forKey: .logoUrl)
        try container.encodeIfPresent(bankName, forKey: .bankName)
        try container.encodeIfPresent(bankAccountProofUrl, forKey: .bankAccountProofUrl)
        try container.encodeIfPresent(fileType, forKey: .fileType)
        try container.encodeIfPresent(bankAccountType, forKey: .bankAccountType)
    }
}

