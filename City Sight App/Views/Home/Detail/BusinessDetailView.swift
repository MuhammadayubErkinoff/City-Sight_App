//
//  BusinessDetailView.swift
//  City Sight App
//
//  Created by Muhammadayubxon on 19/01/22.
//

import SwiftUI

struct BusinessDetailView: View {
    
    var business:Business
    @State private var showDirections = false
    
    var body: some View {
        VStack(alignment:.leading){
            
            VStack(alignment:.leading, spacing:0){
                
                // Image
                GeometryReader(){geo in
                    
                    let uiImage = UIImage(data: business.imageData ?? Data())
                    Image(uiImage: uiImage ?? UIImage())
                        .resizable()
                        .scaledToFill()
                        .frame(width: geo.size.width, height:geo.size.height )
                        .clipped()
                    
                }
                
                // Display open or closed text
                ZStack(alignment: .leading){
                    
                    Rectangle()
                        .foregroundColor((business.isClosed ?? true) ? .gray : .blue)
                        .aspectRatio(CGSize(width: 100, height: 10), contentMode: .fit)
                    Text((business.isClosed ?? true) ? "Closed" : "Open" )
                        .foregroundColor(.white)
                        .padding(.horizontal)
                    
            }
                
            }
            
            BusinessTitle(business: business).padding()
            
            Divider()
            
            Group{
                
            // Phone Number
                HStack{
                    
                    Text("Phone: ")
                        .font(.caption)
                        .bold()
                    Text(business.phone ?? "")
                        .font(.caption)
                    
                    Spacer()
                    
                    Link("Call", destination: URL(string: "tel:\(business.phone ?? "")")!)
                    
                }.padding()
                
                Divider()
                
                // Review numbers
                HStack{
                    
                    Text("Reviews: ")
                        .font(.caption)
                        .bold()
                    Text(String(business.reviewCount ?? 0))
                        .font(.caption)
                    
                    Spacer()
                    
                    Link("Read", destination: URL(string: "\(business.url ?? "")")!)
                    
                }.padding()
                
                Divider()
                
                // Website url
                HStack{
                    
                    Text("Reviews: ")
                        .font(.caption)
                        .bold()
                    Text(String(business.url ?? ""))
                        .font(.caption)
                        .lineLimit(1)
                    
                    Spacer()
                    
                    Link("Visit", destination: URL(string: "\(business.url ?? "")")!)
                    
                }.padding()
                
                Divider()
                
            }
            
            //  Get Directions Button
            Button(action: {
                // Show Directions
                showDirections = true
            }){
                ZStack{
                    
                    Rectangle()
                        .frame( height: 48)
                        .foregroundColor(.blue)
                        .cornerRadius(10)
                    
                    Text("Get Directions")
                        .foregroundColor(.white)
                        .bold()
                    
                }
            }
            .padding()
            .sheet(isPresented: $showDirections) {
                    DirectionView(business: business)
                }
            
        }
        .ignoresSafeArea()
        
    }
}


