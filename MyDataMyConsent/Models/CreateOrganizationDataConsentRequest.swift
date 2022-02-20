//
// CreateOrganizationDataConsentRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Organization Data Consent Request. */
public struct CreateOrganizationDataConsentRequest: Codable, Hashable {

    public var consentTemplateId: UUID?
    public var receiver: Receiver

    public init(consentTemplateId: UUID? = nil, receiver: Receiver) {
        self.consentTemplateId = consentTemplateId
        self.receiver = receiver
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case consentTemplateId
        case receiver
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(consentTemplateId, forKey: .consentTemplateId)
        try container.encode(receiver, forKey: .receiver)
    }
}

