//
//  Song.swift
//  Spotify_clon_A
//
//  Created by Mac14 on 22/06/24.
//

import Foundation

struct APIResponse: Codable {
    let songs: [Song]
}

struct Song: Codable {
    let id: Int
    let title: String
    let description: String
    let image: String
    let mp3: String
    let author: String
}

typealias APIResponseQuickType = [Song]
