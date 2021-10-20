//
//  Mod4Less6ChallengeApp.swift
//  Mod4Less6Challenge
//
//  Created by Kirill Sokolov on 15.10.2021.
//

import SwiftUI

@main
struct Mod4Less6ChallengeApp: App {
    var body: some Scene {
        WindowGroup {
            TabPageView()
                .environmentObject(DataRetrival())  
            
        }
    }
}
