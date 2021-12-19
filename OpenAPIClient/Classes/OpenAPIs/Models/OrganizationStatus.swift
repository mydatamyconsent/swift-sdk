//
// OrganizationStatus.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum OrganizationStatus: String, Codable, CaseIterable {
    case organizationCreated = "OrganizationCreated"
    case contactDetailsUpdated = "ContactDetailsUpdated"
    case overviewUpdated = "OverviewUpdated"
    case addressUpdated = "AddressUpdated"
    case bankAccountsUpdated = "BankAccountsUpdated"
    case signUpCompleted = "SignUpCompleted"
}
