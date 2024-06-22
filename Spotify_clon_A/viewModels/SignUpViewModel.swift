//
//  signUpViewModel.swift
//  Spotify_clon_A
//
//  Created by Mac14 on 25/05/24.
//

import Foundation
import FirebaseAuth

class SignUpvieModel: ObservableObject {
    @Published var elements: [SignUpForm] = [
            SignUpForm(
                title: "What’s your email?",
                input: "",
                helpText: "You’ll need to confirm this email later.",
                keyboardType: .emailAddress,
                value: ""
            ),
            SignUpForm(
                title: "Create a password",
                input: "",
                helpText: "Use atleast 8 characters.",
                keyboardType: .default,
                value: "",
                isSecureField: true
            ),
            SignUpForm(
                title: "What’s your gender?",
                input: "",
                helpText: "",
                keyboardType: .numberPad,
                value: ""
            ),
            SignUpForm(
                title: "What’s your name?",
                input: "",
                helpText: "This appears on your spotify profile",
                keyboardType: .default,
                value: ""
            ),
        ]
    func createUser() {
        let email = elements[0].value
        let password = elements[0].value
        
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if error == nil {
                self.appState.currentScreen = .main
            } else {
                print(error?.localizedDescription)
            }
        }
    }
}
