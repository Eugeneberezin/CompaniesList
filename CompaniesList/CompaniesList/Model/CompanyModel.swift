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

    enum CodingKeys: String, CodingKey {
        case entityID = "entityId"
        case companyName, ratingCount, compositeRating, companyOverview, canadianSP, spanishSpeaking, phoneNumber, latitude, longitude, servicesOffered, specialty, primaryLocation, email
    }
}


