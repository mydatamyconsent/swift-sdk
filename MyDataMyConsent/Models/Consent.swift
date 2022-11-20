//
// Consent.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Consent : Consent details. */
public struct Consent: Codable, JSONEncodable, Hashable {

    /** Consent id. */
    public var id: String
    /** Consent request id. */
    public var requestId: String
    /** Consent request template id. */
    public var templateId: String?
    /** Consent title. */
    public var title: String
    /** Consent description. */
    public var description: String
    /** Consent purpose. */
    public var purpose: String?
    public var status: DataConsentStatus
    /** Transaction id. */
    public var transactionId: String?
    /** Consent requested datetime in UTC timezone. */
    public var requestedAtUtc: Date
    /** Consent approval datetime in UTC timezone. */
    public var approvedAtUtc: Date?
    /** Data access expiration datetime in UTC timezone. */
    public var dataAccessExpiresAtUtc: Date?
    /** Consent revocation datetime in UTC timezone. */
    public var revokedAtUtc: Date?

    public init(id: String, requestId: String, templateId: String? = nil, title: String, description: String, purpose: String? = nil, status: DataConsentStatus, transactionId: String? = nil, requestedAtUtc: Date, approvedAtUtc: Date? = nil, dataAccessExpiresAtUtc: Date? = nil, revokedAtUtc: Date? = nil) {
        self.id = id
        self.requestId = requestId
        self.templateId = templateId
        self.title = title
        self.description = description
        self.purpose = purpose
        self.status = status
        self.transactionId = transactionId
        self.requestedAtUtc = requestedAtUtc
        self.approvedAtUtc = approvedAtUtc
        self.dataAccessExpiresAtUtc = dataAccessExpiresAtUtc
        self.revokedAtUtc = revokedAtUtc
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case requestId
        case templateId
        case title
        case description
        case purpose
        case status
        case transactionId
        case requestedAtUtc
        case approvedAtUtc
        case dataAccessExpiresAtUtc
        case revokedAtUtc
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(requestId, forKey: .requestId)
        try container.encodeIfPresent(templateId, forKey: .templateId)
        try container.encode(title, forKey: .title)
        try container.encode(description, forKey: .description)
        try container.encodeIfPresent(purpose, forKey: .purpose)
        try container.encode(status, forKey: .status)
        try container.encodeIfPresent(transactionId, forKey: .transactionId)
        try container.encode(requestedAtUtc, forKey: .requestedAtUtc)
        try container.encodeIfPresent(approvedAtUtc, forKey: .approvedAtUtc)
        try container.encodeIfPresent(dataAccessExpiresAtUtc, forKey: .dataAccessExpiresAtUtc)
        try container.encodeIfPresent(revokedAtUtc, forKey: .revokedAtUtc)
    }
}
