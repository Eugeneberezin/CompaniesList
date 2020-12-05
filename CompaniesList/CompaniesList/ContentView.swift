//
//  ContentView.swift
//  CompaniesList
//
//  Created by Eugene Berezin on 12/5/20.
//

import SwiftUI


struct ContentView: View {
    @ObservedObject var companyViewModel = CompanyViewModel()
    
    var body: some View {
        List {
            ForEach(companyViewModel.companies) { compay in
                
                Text(compay.companyName)
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
