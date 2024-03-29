//
// CreateConsentRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** CreateConsentRequest : Create consent request. */
public struct CreateConsentRequest: Codable, JSONEncodable, Hashable {

    /** Consent request template id */
    public var consentTemplateId: String
    public var receiver: ConsentRequestReceiver

    public init(consentTemplateId: String, receiver: ConsentRequestReceiver) {
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
        try container.encode(consentTemplateId, forKey: .consentTemplateId)
        try container.encode(receiver, forKey: .receiver)
    }
}

