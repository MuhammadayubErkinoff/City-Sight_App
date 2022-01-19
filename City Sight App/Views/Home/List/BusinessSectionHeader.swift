//
//  BusinessSectionHeader.swift
//  City Sight App
//
//  Created by Muhammadayubxon on 18/01/22.
//

import SwiftUI

struct BusinessSectionHeader: View {
    
    var title: String
    
    var body: some View {
        
        ZStack(alignment: .leading ){
            
            Rectangle()
                .foregroundColor(.white)
                .frame( height: 45)
            
            Text(title)
                .font(.headline)
            
        }
    }
}


