//
// OrganizationDocumentDownloadDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct OrganizationDocumentDownloadDto: Codable, JSONEncodable, Hashable {

    public var id: UUID?
    public var storageUrl: String?
    public var ownerId: UUID?

    public init(id: UUID? = nil, storageUrl: String? = nil, ownerId: UUID? = nil) {
        self.id = id
        self.storageUrl = storageUrl
        self.ownerId = ownerId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case storageUrl
        case ownerId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(storageUrl, forKey: .storageUrl)
        try container.encodeIfPresent(ownerId, forKey: .ownerId)
    }
}
