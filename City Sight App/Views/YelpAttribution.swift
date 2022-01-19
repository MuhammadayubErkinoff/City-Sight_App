//
//  YelpAttribution.swift
//  City Sight App
//
//  Created by Muhammadayubxon on 19/01/22.
//

import SwiftUI

struct YelpAttribution: View {
    
    var link: String
    
    var body: some View {
        
        Link(destination: URL(string: link)!) {
            Image("yelp")
                .resizable()
                .scaledToFit()
                .frame(height:36)
        }
    }
}

