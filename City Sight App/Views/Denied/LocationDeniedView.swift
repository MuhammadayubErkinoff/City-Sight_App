//
//  LocationDeniedView.swift
//  City Sight App
//
//  Created by Muhammadayubxon on 19/01/22.
//

import SwiftUI

struct LocationDeniedView: View {
    
    private let bachgroundColor=Color(red: 34/255, green: 141/255, blue: 138/255)
    
    var body: some View {
        
        VStack(spacing : 20){
            Spacer()
            
            Text("Whoops!")
                .font(.title)
            
            Text("We need to acces your location to provide you with the best sights in the city. You can change your decision at any time in Settings.")
            
            Spacer()
            
            Button {
                
                //Open Settings
                if let url=URL(string:UIApplication.openSettingsURLString){
                    
                    if UIApplication.shared.canOpenURL(url){
                        // If we can open this settings url, then open it
                        UIApplication.shared.open(url, options: [:], completionHandler: nil)
                    }
                    
                }
                    
            } label: {
                ZStack{
                    Rectangle()
                        .foregroundColor(.white)
                        .frame( height: 48)
                        .cornerRadius(10)
                    
                    Text("Go to Settings")
                        .bold()
                        .foregroundColor(bachgroundColor)
                
                }            }

            
            Spacer()
        }
        .padding()
        .multilineTextAlignment(.center)
        .background(bachgroundColor)
        .ignoresSafeArea(.all,edges: .all)
        
    }
}

struct LocationDeniedView_Previews: PreviewProvider {
    static var previews: some View {
        LocationDeniedView()
    }
}
