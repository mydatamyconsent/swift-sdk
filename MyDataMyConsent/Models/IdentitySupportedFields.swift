//
// IdentitySupportedFields.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct IdentitySupportedFields: Codable, Hashable {

    public var icon: String?
    public var title: String?
    public var description: String?
    public var key: String?
    public var dataType: String?

    public init(icon: String? = nil, title: String? = nil, description: String? = nil, key: String? = nil, dataType: String? = nil) {
        self.icon = icon
        self.title = title
        self.description = description
        self.key = key
        self.dataType = dataType
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case icon
        case title
        case description
        case key
        case dataType
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(icon, forKey: .icon)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(key, forKey: .key)
        try container.encodeIfPresent(dataType, forKey: .dataType)
    }
}

