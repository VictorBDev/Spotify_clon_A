//
//  ButtonAlbumView.swift
//  Spotify_clon_A
//
//  Created by Mac14 on 4/07/24.
//

import SwiftUI

struct ButtonAlbumView: View {
    
    var imageName: String
    var artist: String
    var tipo:String
    
    var body: some View {
        VStack {
            Button(action: {
                print(imageName)
            }) {
                if imageName != "" {
                    Image(imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .clipShape(Circle())
                } else {
                    Circle()
                        .fill(Color.black)
                }
            }.frame(width: 120, height: 120)
            
            
            Text(artist)
                .foregroundStyle(.white)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    ButtonAlbumView(imageName: "me", artist: "Billie Eilish", tipo: "Artista")
}
