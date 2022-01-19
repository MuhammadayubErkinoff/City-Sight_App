//
//  BusinessTitle.swift
//  City Sight App
//
//  Created by Muhammadayubxon on 19/01/22.
//

import SwiftUI

struct BusinessTitle: View {
    
    var business : Business
    
    var body: some View {
        VStack(alignment: .leading){
            // Name of business
            Text(business.name ?? "")
                .font(.title2)
            
            HStack{
                
                // Address of business
                VStack(alignment: .leading,spacing: 0){
                    ForEach(business.location?.displayAddress ?? [String](), id: \.self) { address in
                        Text(address)
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                }
                
                // TODO: Yelp Image
                
            }
            
            // Rating
            Image("regular_\(business.rating ?? 0)")
        }
    }
}

