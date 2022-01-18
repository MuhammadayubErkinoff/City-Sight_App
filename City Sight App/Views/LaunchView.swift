//
//  LaunchView.swift
//  City Sight App
//
//  Created by Muhammadayubxon on 18/01/22.
//

import SwiftUI

struct LaunchView: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        
        // Detect the authoriztion status of geolocating the  user
        
        if model.authorizationState == .notDetermined{
            
            // If undetermined, show onboarding
            
        }
        else if model.authorizationState == .authorizedWhenInUse ||
                    model.authorizationState == .authorizedAlways{
            
            // If approved, show home view
            HomeView()
            
        }
        else{
            
            // If denied show denied view
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView().environmentObject(ContentModel())
    }
}
