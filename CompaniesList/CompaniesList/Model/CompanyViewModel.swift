//
//  CompanyViewModel.swift
//  CompaniesList
//
//  Created by Eugene Berezin on 12/5/20.
//

// This is our source of truth. Pretty much the entire app has to be aware of a company object either in an array or separately so this is why I provide this object as an environment variable to the app.

import SwiftUI

class CompanyViewModel: ObservableObject {
    @Published var companies = [Company]()
    
    init() {
        getCompanies()
    }
    
    func getCompanies() {
       companies = Bundle.main.decode([Company].self, from: "pro_data.json")
    }
}
