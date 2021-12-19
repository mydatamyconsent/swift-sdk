//
// ProofDocumentType.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum ProofDocumentType: String, Codable, CaseIterable {
    case leaseAgreement = "LeaseAgreement"
    case certificateOfRegistration = "CertificateOfRegistration"
    case recentElectricityBill = "RecentElectricityBill"
    case recentWaterBill = "RecentWaterBill"
}
