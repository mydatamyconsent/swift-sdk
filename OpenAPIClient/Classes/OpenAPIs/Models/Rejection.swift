//
// Rejection.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Rejection: Codable, Hashable {

    public var reason: String?
    public var rejectedBy: UUID?
    public var rejectedAtUtc: Date?

    public init(reason: String? = nil, rejectedBy: UUID? = nil, rejectedAtUtc: Date? = nil) {
        self.reason = reason
        self.rejectedBy = rejectedBy
        self.rejectedAtUtc = rejectedAtUtc
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case reason
        case rejectedBy
        case rejectedAtUtc
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(reason, forKey: .reason)
        try container.encodeIfPresent(rejectedBy, forKey: .rejectedBy)
        try container.encodeIfPresent(rejectedAtUtc, forKey: .rejectedAtUtc)
    }
}

