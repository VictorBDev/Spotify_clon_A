//
//  HomeView.swift
//  Spotify_clon_A
//
//  Created by Mac14 on 22/06/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color("dark")
                .ignoresSafeArea()
            ScrollView {
                VStack(alignment: .leading, spacing: 30) {
                    HStack(spacing: 20) {
                        TextView(text: "Good morning")
                        Spacer()
                        IconImageView(icon: "bell")
                        IconImageView(icon: "clock")
                        IconImageView(icon: "gear")
                    }
                    TextView(text: "Recently played")
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 15) {
                            AlbumItemView(image: "liked", text: "Liked songs")
                            AlbumItemView(image: "michael", text: "Dangeroues")
                            AlbumItemView(image: "selena", text: "For you")
                        }
                    }
                    TextView(text: "To get you started")
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 15) {
                            AlbumItemView(image: "daily1", width: 144, height: 144, text: "Drake, Michael Jackson, Dua Lipa and more Drake, Michael Jackson,")
                            AlbumItemView(image: "daily2", width: 144, height: 144, text: "Justin Bieber, Michael Jackson, Dua Lipa and more")
                            AlbumItemView(image: "daily1", width: 144, height: 144, text: "The Weeknd, Michael Jackson, Dua Lipa and more")
                        }
                    }
                }
            }.padding()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
