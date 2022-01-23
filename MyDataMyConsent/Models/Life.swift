//
// Life.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Life: Codable, Hashable {

    public var unit: String?
    public var value: String?

    public init(unit: String? = nil, value: String? = nil) {
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
        try container.encodeIfPresent(unit, forKey: .unit)
        try container.encodeIfPresent(value, forKey: .value)
    }
}

