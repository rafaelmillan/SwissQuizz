//
//  LeaderboardItemView.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 27.02.2024.
//

import SwiftUI
import GameKit

struct LeaderboardItemView: View {
    let player: Playable
    @State private var image: UIImage?
    
    var body: some View {
        HStack {
            Text("\(player.rank)")
            if let image = image {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                
            } else {
                Image("memojis/\(player.rank)")
                    .resizable()
                    .font(.title)
                    .blur(radius: 3)
                    .clipShape(Circle())
                    .frame(width: 50, height: 50)
                    .overlay() {
                        ProgressView()
                            .tint(.white)
                    }
            }
            Text(player.displayName)
            Spacer()
            Text("\(player.score) pts")
        }
        .foregroundStyle(.red)
        .font(.custom("BubblegumSans-Regular", size: 24))
        .onAppear {
            player.loadImage() { image in
                withAnimation {
                    self.image = image
                }
            }
        }
    }
}

#Preview {
    VStack {
        LeaderboardItemView(player: Player(score: 1000, displayName: "Rafael", rank: 1, gkPlayer: GKLocalPlayer.local))
        LeaderboardItemView(player: DummyPlayer(rank: 2, minScore: 1000))
    }
}
