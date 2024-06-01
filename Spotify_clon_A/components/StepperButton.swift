//
//  StepperButton.swift
//  Spotify_clon_A
//
//  Created by Mac14 on 1/06/24.
//

import SwiftUI

struct StepperButton: View {
    
    //binding recibe
    @Binding var counter: Int
    var isNext: Bool = true
    var text: String = "Next"
    
    var body: some View {
        Button {
            if isNext {
                counter += 1
            } else {
                counter -= 1
            }
            
        } label: {
            Text(text)
                .foregroundStyle(.white)
                .font(.system(size: 15))
                .fontWeight(.bold)
                .padding()
        }
        .frame(height: 42)
        .background(
            RoundedRectangle(cornerRadius: 21)
            .stroke(Color("primary"), lineWidth: 1)
            .fill(Color("primary"))
        )
        
    }
}


#Preview {
    StepperButton(counter: .constant(0))
}
