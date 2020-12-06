//
//  DetailsView.swift
//  CompaniesList
//
//  Created by Eugene Berezin on 12/5/20.
//

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
                        .padding(.bottom, 5)
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
                    
                }
                .foregroundColor(.white)
                .frame(width: 180, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(Color("ButtonColor"))
                .padding()
                
                
                Button("EMAIL") {
                    
                }
                .foregroundColor(.white)
                .frame(width: 180, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
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
