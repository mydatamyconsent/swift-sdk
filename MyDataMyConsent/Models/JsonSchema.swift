//
// JsonSchema.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct JsonSchema: Codable, Hashable {

    public var keywords: [AnyCodable]?
    public var otherData: [String: AnyCodable]?

    public init(keywords: [AnyCodable]? = nil, otherData: [String: AnyCodable]? = nil) {
        self.keywords = keywords
        self.otherData = otherData
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case keywords
        case otherData
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(keywords, forKey: .keywords)
        try container.encodeIfPresent(otherData, forKey: .otherData)
    }
}
