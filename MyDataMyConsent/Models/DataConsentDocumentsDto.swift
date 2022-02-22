//
// DataConsentDocumentsDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct DataConsentDocumentsDto: Codable, JSONEncodable, Hashable {

    public var id: UUID?
    public var documents: [Document]?
    public var approvedDocuments: [DataConsentRequestedDocument]?

    public init(id: UUID? = nil, documents: [Document]? = nil, approvedDocuments: [DataConsentRequestedDocument]? = nil) {
        self.id = id
        self.documents = documents
        self.approvedDocuments = approvedDocuments
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case documents
        case approvedDocuments
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(documents, forKey: .documents)
        try container.encodeIfPresent(approvedDocuments, forKey: .approvedDocuments)
    }
}
