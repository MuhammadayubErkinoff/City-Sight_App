//
//  City_Sight_App.swift
//  City Sight App
//
//  Created by Muhammadayubxon on 18/01/22.
//

import SwiftUI

@main
struct CitySightApp: App {
    var body: some Scene {
        WindowGroup {
            LaunchView().environmentObject(ContentModel())
        }
    }
}
