//
// IndividualConsentRequestTemplateDetailsRequestLife.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct IndividualConsentRequestTemplateDetailsRequestLife: Codable, JSONEncodable, Hashable {

    /** Life unit. Example: days, hours, minutes. */
    public var unit: String
    /** Life value in number. */
    public var value: String

    public init(unit: String, value: String) {
        self.unit = unit
        self.value = value
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case unit
        case value
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(unit, forKey: .unit)
        try container.encode(value, forKey: .value)
    }
}
