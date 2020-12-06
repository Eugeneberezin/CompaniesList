//
//  CompaniesListApp.swift
//  CompaniesList
//
//  Created by Eugene Berezin on 12/5/20.
//

import SwiftUI

@main
struct CompaniesListApp: App {
    @StateObject var companyViewModel = CompanyViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(companyViewModel)
        }
    }
}
