//
//  LeaderboardItemView.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 27.02.2024.
//

import SwiftUI
import GameKit

struct LeaderboardItemView: View {
    let player: Player
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
                Image(systemName: "person.crop.circle.fill")
                    .font(.title)
            }
            Text(player.displayName)
                .font(.title3)
            Spacer()
            Text(player.formattedScore)
        }
        .foregroundStyle(.red)
        .onAppear {
            loadImage()
        }
    }
    
    func loadImage() {
        Leaderboard.shared.playerPhoto(gkPlayer: player.gkPlayer) { image in
            self.image = image
        }
    }
}

#Preview {
    LeaderboardItemView(player: Player(formattedScore: "1.000 points", displayName: "Rafael", rank: 1, gkPlayer: GKLocalPlayer.local))
}
