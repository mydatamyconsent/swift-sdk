//
// PaymentRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PaymentRequest: Codable, JSONEncodable, Hashable {

    public var identifier: String?
    public var amount: String?
    public var currencyCode: String?
    public var paymentUrl: String?
    public var description: String?
    public var dueByUtc: Date?

    public init(identifier: String? = nil, amount: String? = nil, currencyCode: String? = nil, paymentUrl: String? = nil, description: String? = nil, dueByUtc: Date? = nil) {
        self.identifier = identifier
        self.amount = amount
        self.currencyCode = currencyCode
        self.paymentUrl = paymentUrl
        self.description = description
        self.dueByUtc = dueByUtc
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case identifier
        case amount
        case currencyCode
        case paymentUrl
        case description
        case dueByUtc
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(identifier, forKey: .identifier)
        try container.encodeIfPresent(amount, forKey: .amount)
        try container.encodeIfPresent(currencyCode, forKey: .currencyCode)
        try container.encodeIfPresent(paymentUrl, forKey: .paymentUrl)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(dueByUtc, forKey: .dueByUtc)
    }
}

