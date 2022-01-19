//
//  BusinessSection.swift
//  City Sight App
//
//  Created by Muhammadayubxon on 18/01/22.
//

import SwiftUI

struct BusinessSection: View {
    
    var title:String
    var businesses:[Business]
    
    var body: some View {
        
        Section(header: BusinessSectionHeader(title: title)){
            
            ForEach(businesses){ business in
                
                
                NavigationLink(destination: BusinessDetailView(business: business)){
                    
                     BusinessRowView(business: business)
                    
                }
                
            }
        }
    }
}
