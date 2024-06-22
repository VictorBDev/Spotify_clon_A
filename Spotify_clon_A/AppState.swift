//
//  AppState.swift
//  Spotify_clon_A
//
//  Created by Mac14 on 22/06/24.
//

import Foundation

class AppState: ObservableObject {
    
    //Que es singleton patter: Se va a instaciar a si mismo
    //singleton pattern
    static let shared = AppState()
    
    enum AppScreens {
        case launch
        case signIn
        case main
    }
    
    @Published var currentScreen: AppScreens = .launch
}



