//
//  AppDelegate.swift
//  Spotify_clon_A
//
//  Created by Mac14 on 25/05/24.
//

import SwiftUI
import FirebaseCore
import UIKit


class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}
