//
//  CompanyModel.swift
//  CompaniesList
//
//  Created by Eugene Berezin on 12/5/20.
//

import Foundation

struct Company: Codable, Identifiable {
    var id = UUID()
    let entityID: String
    let companyName: String
    let ratingCount: String
    let compositeRating: String
    let companyOverview: String
    let canadianSP: Bool
    let spanishSpeaking: Bool
    let phoneNumber: String
    let latitude: Double?
    let longitude: Double?
    let servicesOffered: String?
    let specialty: String
    let primaryLocation: String
    let email: String
    
    static let companyExample = Company(entityID: "123", companyName: "Example Company", ratingCount: "10", compositeRating: "2.9", companyOverview: "Example", canadianSP: false, spanishSpeaking: false, phoneNumber: "773-495-9659", latitude: nil, longitude: nil, servicesOffered: nil, specialty: "Example specialty", primaryLocation: "Seattle", email: "example@example.com")

    enum CodingKeys: String, CodingKey {
        case entityID = "entityId"
        case companyName, ratingCount, compositeRating, companyOverview, canadianSP, spanishSpeaking, phoneNumber, latitude, longitude, servicesOffered, specialty, primaryLocation, email
    }
}


