//
// ConsentRequestReceiver.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Consent request receiver details */
public struct ConsentRequestReceiver: Codable, JSONEncodable, Hashable {

    /** Consent request receiver country ISO 2 code */
    public var countryIso2Code: String
    /** Consent request receiver identifiers */
    public var identifiers: [StringStringKeyValuePair]
    public var identificationStrategy: IdentificationStrategy

    public init(countryIso2Code: String, identifiers: [StringStringKeyValuePair], identificationStrategy: IdentificationStrategy) {
        self.countryIso2Code = countryIso2Code
        self.identifiers = identifiers
        self.identificationStrategy = identificationStrategy
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case countryIso2Code
        case identifiers
        case identificationStrategy
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(countryIso2Code, forKey: .countryIso2Code)
        try container.encode(identifiers, forKey: .identifiers)
        try container.encode(identificationStrategy, forKey: .identificationStrategy)
    }
}

