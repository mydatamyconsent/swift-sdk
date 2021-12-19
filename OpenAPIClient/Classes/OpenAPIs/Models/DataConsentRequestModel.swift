//
// DataConsentRequestModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct DataConsentRequestModel: Codable, Hashable {

    public var organizationId: UUID?
    public var transactionId: String?
    public var identifiers: [String: String]?
    public var startDateTime: Date?
    public var expiryDateTime: Date?
    public var description: String?
    public var purposeCode: String?
    public var purposeLink: String?
    public var dataLifeUnit: DataLifeUnit?
    public var dataLifeValue: Int?
    public var dataFetchFrequencyUnit: DataFetchFrequencyUnit?
    public var dataFetchFrequencyUnitValue: Int?
    public var dataFetchType: DataFetchType?
    public var agreementId: UUID?
    public var identityClaims: [IdentityClaim]?
    public var financialAccounts: [DataConsentRequestedFaDto]?
    public var documents: [DataConsentRequestedDocumentDto]?

    public init(organizationId: UUID? = nil, transactionId: String? = nil, identifiers: [String: String]? = nil, startDateTime: Date? = nil, expiryDateTime: Date? = nil, description: String? = nil, purposeCode: String? = nil, purposeLink: String? = nil, dataLifeUnit: DataLifeUnit? = nil, dataLifeValue: Int? = nil, dataFetchFrequencyUnit: DataFetchFrequencyUnit? = nil, dataFetchFrequencyUnitValue: Int? = nil, dataFetchType: DataFetchType? = nil, agreementId: UUID? = nil, identityClaims: [IdentityClaim]? = nil, financialAccounts: [DataConsentRequestedFaDto]? = nil, documents: [DataConsentRequestedDocumentDto]? = nil) {
        self.organizationId = organizationId
        self.transactionId = transactionId
        self.identifiers = identifiers
        self.startDateTime = startDateTime
        self.expiryDateTime = expiryDateTime
        self.description = description
        self.purposeCode = purposeCode
        self.purposeLink = purposeLink
        self.dataLifeUnit = dataLifeUnit
        self.dataLifeValue = dataLifeValue
        self.dataFetchFrequencyUnit = dataFetchFrequencyUnit
        self.dataFetchFrequencyUnitValue = dataFetchFrequencyUnitValue
        self.dataFetchType = dataFetchType
        self.agreementId = agreementId
        self.identityClaims = identityClaims
        self.financialAccounts = financialAccounts
        self.documents = documents
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case organizationId
        case transactionId
        case identifiers
        case startDateTime
        case expiryDateTime
        case description
        case purposeCode
        case purposeLink
        case dataLifeUnit
        case dataLifeValue
        case dataFetchFrequencyUnit
        case dataFetchFrequencyUnitValue
        case dataFetchType
        case agreementId
        case identityClaims
        case financialAccounts
        case documents
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(organizationId, forKey: .organizationId)
        try container.encodeIfPresent(transactionId, forKey: .transactionId)
        try container.encodeIfPresent(identifiers, forKey: .identifiers)
        try container.encodeIfPresent(startDateTime, forKey: .startDateTime)
        try container.encodeIfPresent(expiryDateTime, forKey: .expiryDateTime)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(purposeCode, forKey: .purposeCode)
        try container.encodeIfPresent(purposeLink, forKey: .purposeLink)
        try container.encodeIfPresent(dataLifeUnit, forKey: .dataLifeUnit)
        try container.encodeIfPresent(dataLifeValue, forKey: .dataLifeValue)
        try container.encodeIfPresent(dataFetchFrequencyUnit, forKey: .dataFetchFrequencyUnit)
        try container.encodeIfPresent(dataFetchFrequencyUnitValue, forKey: .dataFetchFrequencyUnitValue)
        try container.encodeIfPresent(dataFetchType, forKey: .dataFetchType)
        try container.encodeIfPresent(agreementId, forKey: .agreementId)
        try container.encodeIfPresent(identityClaims, forKey: .identityClaims)
        try container.encodeIfPresent(financialAccounts, forKey: .financialAccounts)
        try container.encodeIfPresent(documents, forKey: .documents)
    }
}

