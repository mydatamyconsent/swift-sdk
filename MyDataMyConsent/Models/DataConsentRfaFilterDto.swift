//
// DataConsentRfaFilterDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct DataConsentRfaFilterDto: Codable, Hashable {

    public var filterType: FilterType?
    public var _operator: Operator?
    public var value: String?

    public init(filterType: FilterType? = nil, _operator: Operator? = nil, value: String? = nil) {
        self.filterType = filterType
        self._operator = _operator
        self.value = value
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case filterType
        case _operator = "operator"
        case value
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(filterType, forKey: .filterType)
        try container.encodeIfPresent(_operator, forKey: ._operator)
        try container.encodeIfPresent(value, forKey: .value)
    }
}
