//
// OrganizationType.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct OrganizationType: Codable, Hashable {

    public var id: UUID?
    public var countryId: UUID?
    public var typeName: String?
    public var elfCode: String?
    public var country: Country?

    public init(id: UUID? = nil, countryId: UUID? = nil, typeName: String? = nil, elfCode: String? = nil, country: Country? = nil) {
        self.id = id
        self.countryId = countryId
        self.typeName = typeName
        self.elfCode = elfCode
        self.country = country
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case countryId
        case typeName
        case elfCode
        case country
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(countryId, forKey: .countryId)
        try container.encodeIfPresent(typeName, forKey: .typeName)
        try container.encodeIfPresent(elfCode, forKey: .elfCode)
        try container.encodeIfPresent(country, forKey: .country)
    }
}
