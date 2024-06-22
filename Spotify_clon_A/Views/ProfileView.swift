//
//  ProfileView.swift
//  Spotify_clon_A
//
//  Created by Mac14 on 22/06/24.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var profileViewModel: ProfileViewModel = ProfileViewModel()
    
    @State var isOnToggle: Bool = false
    
    var body: some View {
        ZStack {
            Color("dark")
                .ignoresSafeArea()
            VStack {
                HStack {
                    Image("avatar")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 64, height: 64)
                        .clipped()
                    VStack(alignment: .leading) {
                        TextView(text: "Victor Balboa")
                        TextView(text: "View Profile", size: 12)
                    }
                    Spacer()
                    IconImageView(icon: "chevron.right", size: 20)
                }.padding()
                List(profileViewModel.settingsList, id: \.self) { item in
                    VStack(alignment: .leading) {
                        TextView(text: item.title, color: .black, size: 16)
                        ForEach(item.child, id: \.self) {
                            iChild in
                            HStack {
                                VStack(alignment: .leading) {
                                    TextView(text: iChild.title, color: .black, size: 16)
                                    TextView(text: iChild.text, color: .black, size: 12)
                                }
                                if iChild.haveToggle {
                                    Toggle(isOn: $isOnToggle) {
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
