//
// DataProcessingAgreementDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct DataProcessingAgreementDto: Codable, Hashable {

    public var id: UUID
    public var version: String
    public var body: String
    public var attachmentUrl: String

    public init(id: UUID, version: String, body: String, attachmentUrl: String) {
        self.id = id
        self.version = version
        self.body = body
        self.attachmentUrl = attachmentUrl
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case version
        case body
        case attachmentUrl
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(version, forKey: .version)
        try container.encode(body, forKey: .body)
        try container.encode(attachmentUrl, forKey: .attachmentUrl)
    }
}
