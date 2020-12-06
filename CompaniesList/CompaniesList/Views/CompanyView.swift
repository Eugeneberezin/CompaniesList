//
//  CompanyView.swift
//  CompaniesList
//
//  Created by Eugene Berezin on 12/5/20.
//

/*
 This is the company (pro) view. In UIKit world it would be a UITableViewCell. I am passing Company variable to keep track of the company. It will fetch the company object from the array.
 It is wrapped in a navigation link so we can transfer to the details screen.
 
 */

import SwiftUI

struct CompanyView: View {
    
    var company: Company
    var body: some View {
        
        NavigationLink(destination: DetailsView(company: company)) {
            VStack(alignment: .leading) {
                Text(company.companyName)
                    .font(.system(size: 18.0, weight: .bold))
                    .padding(.top, 10)
                    .padding(.trailing, 15)
                
                HStack {
                    if Double(company.ratingCount) ?? 0.0 > 0 {
                    Text("Rating\(company.compositeRating) |")
                        .font(.system(size: 16))
                        .padding(.top, 10)
                        .foregroundColor(
                            ratingColor()
                        )
                    
                    Text("\(company.ratingCount) rating(s)")
                        .font(.system(size: 16))
                        .padding(.top, 10)
                        .padding(.trailing, 15)
                        .foregroundColor(
                            ratingColor()
                        )
                    } else {
                        Text("References Available")
                            .font(.system(size: 16))
                        
                    }
                    
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
            .previewLayout(.sizeThatFits)
    }
}
