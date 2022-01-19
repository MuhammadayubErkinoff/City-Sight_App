//
//  BusinessRowView.swift
//  City Sight App
//
//  Created by Muhammadayubxon on 18/01/22.
//

import SwiftUI

struct BusinessRowView: View {
    
    @ObservedObject var business: Business
    
    var body: some View {
        VStack(alignment:.leading){
            HStack{
                // Image
                let uiImage = UIImage(data: business.imageData ?? Data())
                Image(uiImage: uiImage ?? UIImage())
                    .resizable()
                    .frame(width: 58, height: 58)
                    .cornerRadius(5)
                    .scaledToFit()
                
                // Name and distance
                VStack(alignment:.leading){
                    Text(business.name ?? "").font(.headline)
                    Text(String(format:"%.1f km away",(business.distance ?? 0)/1000))
                        .font(.caption)
                }
                
                Spacer()
                
                // Star rating and number of reviews
                VStack(alignment:.leading){
                    Image("regular_\(String(describing: business.rating ?? 0) )")
                    Text("\(business.reviewCount ?? 0) Reviews")
                        .font(.caption)
                }
                
            }
            Divider()
        }.foregroundColor(.black)
    }
}

