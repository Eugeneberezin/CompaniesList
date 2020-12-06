//
//  ContentView.swift
//  CompaniesList
//
//  Created by Eugene Berezin on 12/5/20.
//

/*
 I decided to complete this take-home assignment in SwiftUI. It's a new technology. I love it. And I really wanted to show off that I am trying to be up to speed with the latest iOS technology.
 
In this view List is a representation of plain TableView.
 I provided font sizes as requested in the spec. However, it's rather tricky to provide pixel by pixel sizing and distance for the UI elements (in both SwiftUI and UIKit). Certain things are pre-set so in these cases it's better not to fight the system.
 I did verify that it looks similar to the prototype.
 
 */

import SwiftUI


struct ContentView: View {
    @ObservedObject var companyViewModel = CompanyViewModel()
    
    var body: some View {
        NavigationView {
        List {
            ForEach(companyViewModel.companies.sorted {$0.companyName < $1.companyName}) { company in
                // Consider it as a UITableViewCell in a way.
                    CompanyView(company: company)
                       
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
