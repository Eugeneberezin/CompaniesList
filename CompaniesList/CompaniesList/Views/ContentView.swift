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
        NavigationView {
        List {
            ForEach(companyViewModel.companies) { compay in
                
                    CompanyView(company: compay)
                        .padding(.top)
                        .padding(.bottom)
                
                
            }
        }
        .navigationBarTitle(Text("Pros"), displayMode: .inline)
        
        
        
            
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
