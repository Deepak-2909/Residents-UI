//
//  ResidentsUIApp.swift
//  ResidentsUI
//
//  Created by Deepak on 13/07/21.
//

import SwiftUI

@main
struct ResidentsUIApp: App {
    
    //@State var residentsViewModel: ResidentsViewModel = ResidentsViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ResidentsViewModel())
        }
        
    }
}
