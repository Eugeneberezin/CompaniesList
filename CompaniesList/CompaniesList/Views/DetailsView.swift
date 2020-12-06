//
//  DetailsView.swift
//  CompaniesList
//
//  Created by Eugene Berezin on 12/5/20.
//

/*
 This is the detail view. I was trying to be as close to the spec as possible but certain things in the UI look slightly off and more spaced out so I modified spacing just a little bit so it looks similar or the same to the prototype.
 I have to note because we're dealing with embedded VStacks we have to modify numbers how much padding we can provide.
 For the company description in UIKit I'd normally use UITextView but in SwiftUI TextEditor is not quite ready so it does not behave in the same way as UITextView in some ways. I've embedded Text() in scroll view so we have very similar behavior to non editing UITextView
 
 */

import SwiftUI

struct DetailsView: View {
    var company: Company
    var body: some View {
        VStack(alignment: .center) {
                VStack(alignment: .center) {
                    Text(company.companyName)
                        .lineLimit(nil)
                        .multilineTextAlignment(.center)                .font(.system(size: 20, weight: .bold))
                        .padding(.bottom, 5)
                        .padding(.leading, 50)
                        .padding(.trailing, 50)
                    
                    Text(company.specialty)
                        .font(.system(size: 18, weight: .medium))
                        .padding(.bottom,2)
                    Text("Rating: \(company.compositeRating) | \(company.ratingCount) rating(s)")
                        .font(.system(size: 16, weight: .bold))
                        .padding(.bottom, 30)
                    Text(company.primaryLocation)
                        .font(.system(size: 16))
                        .padding(.leading, -200)
                        .padding(.top, -10)
                    
                    
                    Text(company.servicesOffered ?? "Power pluming")
                        .frame(width: 400, height: 50, alignment: .leading)
                            .lineLimit(nil)
                            .multilineTextAlignment(.leading)
                            .font(.system(size: 16))
                    
                        
                }
                .padding(.top)
            
            ScrollView {
                Text(company.companyOverview)
                    .padding(.all, 20)
            }
            Spacer()
            
            HStack(alignment: .center,spacing: 15) {
                Button("CALL") {
                    print("phone = <phone number>")
                }
                .foregroundColor(.white)
                .frame(width: 180, height: 50, alignment: .center)
                .background(Color("ButtonColor"))
                .padding()
                
                
                Button("EMAIL") {
                    print("email = <email>")
                }
                .foregroundColor(.white)
                .frame(width: 180, height: 50, alignment: .center)
                .background(Color("ButtonColor"))
            }
            .padding(.trailing)
            
            Spacer()
        
        }
        .navigationTitle("Details")

    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(company: Company.companyExample)
    }
}
