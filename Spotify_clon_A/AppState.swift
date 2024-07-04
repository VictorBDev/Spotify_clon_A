//
//  AppState.swift
//  Spotify_clon_A
//
//  Created by Mac14 on 22/06/24.
//

import Foundation

class AppState: ObservableObject{
    
    // Singleton Pattern
    // Se instancia a sí mismo
    static let shared = AppState()
    // static para utilizar la variable de una clase sin necesidad de instanciar la clase
    
    enum AppScreens {
        case launch
        case signIn
        case main
    }
    
    @Published var currentScreen: AppScreens = .launch
    
}
