//
//  HomeView.swift
//  City Sight App
//
//  Created by Muhammadayubxon on 18/01/22.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var model:ContentModel
    
    @State var isListShowing = true
    
    var body: some View {
        
        NavigationView{
        
            if model.restaurants.count != 0 || model.sights.count != 0{
                
                // Determine if we should show list or map
                if isListShowing{
                    // Show list
                    VStack{
                        HStack{
                            Image(systemName: "location").padding()
                            Text("San Fransisco")
                            Spacer()
                            Button(action: {
                                isListShowing = false
                            }){
                                Text("Switch to Map View")
                            }
                        }
                        
                        Divider()
                        
                        BusinessList()
                        
                    }.padding([.horizontal,.top])
                        .navigationBarHidden(true)
                    
                }
                else{
                    //show map
                    
                }
                
            }
            else{
        
                // Still waiting for data so show spinner
                ProgressView()
                
            }
                
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
