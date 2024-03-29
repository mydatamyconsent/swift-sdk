//
// PaginatedListOfDataProviders.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PaginatedListOfDataProviders: Codable, JSONEncodable, Hashable {

    public var pageNo: Int
    public var pageSize: Int
    public var totalPage: Int
    public var items: [DataProvider]

    public init(pageNo: Int, pageSize: Int, totalPage: Int, items: [DataProvider]) {
        self.pageNo = pageNo
        self.pageSize = pageSize
        self.totalPage = totalPage
        self.items = items
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case pageNo
        case pageSize
        case totalPage
        case items
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(pageNo, forKey: .pageNo)
        try container.encode(pageSize, forKey: .pageSize)
        try container.encode(totalPage, forKey: .totalPage)
        try container.encode(items, forKey: .items)
    }
}

