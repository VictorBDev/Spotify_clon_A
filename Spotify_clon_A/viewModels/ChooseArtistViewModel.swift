//
//  ChooseArtistViewModel.swift
//  Spotify_clon_A
//
//  Created by Mac14 on 4/07/24.
//

import Foundation

class ChooseArtistViewModel: ObservableObject {
    
    @Published var artistas: [AlbumsArtists] = [
        AlbumsArtists(name: "Devil's Gun", image: "devilsgun"),
        AlbumsArtists(name: "Me", image: "me"),
        AlbumsArtists(name: "My turn", image: "myturn"),
        AlbumsArtists(name: "Paradise", image: "paradise"),
        AlbumsArtists(name: "Pink Floyd", image: "pinkfloyd"),
        AlbumsArtists(name: "Rafale", image: "rafale"),
        AlbumsArtists(name: "X-Com", image: "xcom"),
    ]
}
