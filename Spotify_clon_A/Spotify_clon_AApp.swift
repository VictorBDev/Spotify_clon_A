//
//  Spotify_clon_AApp.swift
//  Spotify_clon_A
//
//  Created by Mac14 on 11/05/24.
//

import SwiftUI

@main
struct Spotify_clon_AApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    let persistenceController = PersistenceController.shared
    
    @StateObject var appState: AppState = .shared

    var body: some Scene {
        WindowGroup {
            switch appState.currentScreen {
            case .launch:
                LaunchView()
                    .environmentObject(appState)
            case .signIn:
                SignInView()
                    .environmentObject(appState)
            case .main:
                MainView()
                    .environmentObject(appState)
            }
        }
    }
}
