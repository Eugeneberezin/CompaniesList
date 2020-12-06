//
//  CompanyView.swift
//  CompaniesList
//
//  Created by Eugene Berezin on 12/5/20.
//

import SwiftUI

struct CompanyView: View {
    
    var company: Company
    var body: some View {
        
        NavigationLink(destination: Text("Test")) {
            VStack(alignment: .leading) {
                Text(company.companyName)
                    .font(.system(size: 18)).bold()
                Spacer()
                HStack {
                    Text("Rating\(company.compositeRating) |")
                        .font(.system(size: 16))
                        .foregroundColor(
                            ratingColor()
                        )
                    
                    Text("\(company.ratingCount) rating(s)")
                        .font(.system(size: 16))
                        .foregroundColor(
                            ratingColor()
                        )
                    
                }
            
            }
        }
        

        
        
    }
    
    func ratingColor() -> Color {
        if Double(company.compositeRating) ?? 0 >= 4.0 {
            return Color.green
        } else if Double(company.compositeRating) ?? 0 >= 3.0 || Double(company.compositeRating) ?? 0 >= 3.9 {
            return Color.orange
        } else if Double(company.compositeRating) ?? 0 < 3.0 {
            return Color.red
        } else {
            return Color.black
        }
    }
}

struct CompanyView_Previews: PreviewProvider {
    static var previews: some View {
        CompanyView(company: Company.companyExample)
    }
}
