//
// DocumentIssueRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct DocumentIssueRequest: Codable, Hashable {

    public var documentTypeId: String
    public var identifier: String
    public var name: String
    public var description: String
    public var receiver: Receiver
    public var expiresAtUtc: String?
    public var base64PDFDocument: String
    public var metadata: AnyCodable?

    public init(documentTypeId: String, identifier: String, name: String, description: String, receiver: Receiver, expiresAtUtc: String? = nil, base64PDFDocument: String, metadata: AnyCodable? = nil) {
        self.documentTypeId = documentTypeId
        self.identifier = identifier
        self.name = name
        self.description = description
        self.receiver = receiver
        self.expiresAtUtc = expiresAtUtc
        self.base64PDFDocument = base64PDFDocument
        self.metadata = metadata
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case documentTypeId
        case identifier
        case name
        case description
        case receiver
        case expiresAtUtc
        case base64PDFDocument
        case metadata
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(documentTypeId, forKey: .documentTypeId)
        try container.encode(identifier, forKey: .identifier)
        try container.encode(name, forKey: .name)
        try container.encode(description, forKey: .description)
        try container.encode(receiver, forKey: .receiver)
        try container.encodeIfPresent(expiresAtUtc, forKey: .expiresAtUtc)
        try container.encode(base64PDFDocument, forKey: .base64PDFDocument)
        try container.encodeIfPresent(metadata, forKey: .metadata)
    }
}
