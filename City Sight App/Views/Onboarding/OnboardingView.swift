//
//  OnboardingView.swift
//  City Sight App
//
//  Created by Muhammadayubxon on 19/01/22.
//

import SwiftUI

struct OnboardingView: View {
    
    @EnvironmentObject var model:ContentModel
    
    @State private var tabSelection=0
    
    private let blue = Color(red: 0/255, green: 130/255, blue: 167/255)
    private let turquoise = Color(red: 55/255, green: 197/255, blue: 192/255)
    
    var body: some View {
        
        VStack {
            
            //TabView
            TabView(selection: $tabSelection){
                
                // First tab
                ZStack{
                
                    VStack(spacing:20){
                        Image("city2")
                            .resizable()
                            .scaledToFit()
                        Text("Welcome to City Sights!")
                            .bold()
                            .font(.title)
                            .foregroundColor(.white)
                        Text("City Sights helps you find the best of the city!")
                            .foregroundColor(.white)
                    }
                    
                }
                .tag(0)
                
                // Second tab
                ZStack{
                        
                    VStack(spacing:20){
                        Image("city1")
                            .resizable()
                            .scaledToFit()
                        Text("Ready to discover your city?")
                            .bold()
                            .font(.title)
                            .foregroundColor(.white)
                        Text("We'll show you the best restaurants, venues and more, based on your location!")
                            .foregroundColor(.white)
                    }
                
                }.tag(1)
                
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            .ignoresSafeArea()
                
            
            //Button
            Button(action: {
                
                // Detect which tab it is
                if tabSelection == 0{
                    tabSelection = 1
                }
                else{
                    // Request geolocation Permission
                    model.requestGeolocationPermission()
                }
                
            }) {
            
                ZStack{
                    Rectangle()
                        .foregroundColor(.white)
                        .frame( height: 48)
                        .cornerRadius(10)
                    
                    Text(tabSelection == 0 ? "Next": "Get My Location")
                        .bold()
                    
                }.accentColor(tabSelection == 0 ? blue: turquoise)
                
                
            }.padding()
            
        }
        .background(tabSelection==0 ? blue : turquoise)
        .multilineTextAlignment(.center)
        
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
