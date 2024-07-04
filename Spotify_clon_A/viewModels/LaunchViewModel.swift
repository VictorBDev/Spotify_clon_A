//
//  LaunchViewModel.swift
//  Spotify_clon_A
//
//  Created by Mac14 on 22/06/24.
//

import Foundation
import FirebaseAuth

class LaunchViewModel: ObservableObject {
    
    var appState: AppState = .shared
    
    init() {
        appState.currentScreen = Auth.auth().currentUser !== nil ? .signIn : .main
    }
}
