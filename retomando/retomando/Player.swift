//
//  player.swift
//  retomando
//
//  Created by LMCM on 1/24/22.
//

import SwiftUI
import AVKit

struct Player: View {
    @State var isPlayerActive: Bool = false
    var body: some View {
        NavigationView {
            VStack {
                Text("Video de Cuphead")
                    .font(.title)
                    .fontWeight(.semibold)
                Button {
                    isPlayerActive = true
                } label: {
                    ZStack {
                        Image("cuphead")
                            .resizable()
                            .scaledToFit()
                        Image(systemName: "play.fill")
                            .foregroundColor(.white)
                    }
                }
                NavigationLink(isActive: $isPlayerActive) {
                    VideoPlayer(player:
                                    AVPlayer(url: URL(
                                        string:
                                            "https://cdn.cloudflare.steamstatic.com/steam/apps/256705156/movie480.mp4"
                                    )!))
                        .frame(width: 300, height: 260, alignment: .center)
                } label: {
                    EmptyView()
                }

            }
            .navigationTitle("Video Player")
            .navigationBarTitleDisplayMode(.inline)
            .offset(y: -60)
        }
    }
}

struct PlayerPreview: PreviewProvider {
    static var previews: some View {
        Player()
            .preferredColorScheme(.dark)
    }
}
