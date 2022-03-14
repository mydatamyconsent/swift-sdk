//
// IndividualDataConsent.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Individual data consent details. */
public struct IndividualDataConsent: Codable, JSONEncodable, Hashable {

    /** Name of consent approver individual. */
    public var approver: String
    /** Data consent id. */
    public var id: UUID
    /** Consent template id. */
    public var templateId: UUID?
    /** Consent title. */
    public var title: String
    /** Consent description. */
    public var description: String
    /** Consent purpose. */
    public var purpose: String?
    public var status: DataConsentStatus
    /** Transaction id. */
    public var transactionId: String?
    /** Consent approval datetime in UTC timezone. */
    public var approvedAtUtc: Date
    /** Data access expiration datetime in UTC timezone. */
    public var dataAccessExpiresAtUtc: Date
    /** Consent revocation datetime in UTC timezone. */
    public var revokedAtUtc: Date?

    public init(approver: String, id: UUID, templateId: UUID? = nil, title: String, description: String, purpose: String? = nil, status: DataConsentStatus, transactionId: String? = nil, approvedAtUtc: Date, dataAccessExpiresAtUtc: Date, revokedAtUtc: Date? = nil) {
        self.approver = approver
        self.id = id
        self.templateId = templateId
        self.title = title
        self.description = description
        self.purpose = purpose
        self.status = status
        self.transactionId = transactionId
        self.approvedAtUtc = approvedAtUtc
        self.dataAccessExpiresAtUtc = dataAccessExpiresAtUtc
        self.revokedAtUtc = revokedAtUtc
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case approver
        case id
        case templateId
        case title
        case description
        case purpose
        case status
        case transactionId
        case approvedAtUtc
        case dataAccessExpiresAtUtc
        case revokedAtUtc
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(approver, forKey: .approver)
        try container.encode(id, forKey: .id)
        try container.encodeIfPresent(templateId, forKey: .templateId)
        try container.encode(title, forKey: .title)
        try container.encode(description, forKey: .description)
        try container.encodeIfPresent(purpose, forKey: .purpose)
        try container.encode(status, forKey: .status)
        try container.encodeIfPresent(transactionId, forKey: .transactionId)
        try container.encode(approvedAtUtc, forKey: .approvedAtUtc)
        try container.encode(dataAccessExpiresAtUtc, forKey: .dataAccessExpiresAtUtc)
        try container.encodeIfPresent(revokedAtUtc, forKey: .revokedAtUtc)
    }
}

