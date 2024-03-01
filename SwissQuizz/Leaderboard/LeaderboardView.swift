//
//  LeaderboardView.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 14.02.2024.
//

import SwiftUI
import GameKit

struct LeaderboardView: View {
    @State private var players: [Player]?
    @State private var error: LeaderboardError?
    @State private var isGameCenterOn = Leaderboard.shared.isGameCenterOn

    var body: some View {
        if !isGameCenterOn {
            EnableLeaderboardView(isGameCenterOn: $isGameCenterOn)
        } else if let players = players {
            VStack {
                Text("Leaderboard")
                    .font(.custom("BubblegumSans-Regular", size: 36))
                    .foregroundStyle(.red)
                    .padding()
                List(players, id: \.displayName) { player in
                    LeaderboardItemView(player: player)
                }
                .listStyle(.plain)
                .onAppear {
                    loadLeaderboard()
                }
            }
        } else {
            LeaderboardLoadingView(error: error)
                .onAppear {
                    loadLeaderboard()
                }
            
        }
    }
    
    func loadLeaderboard() {
        Leaderboard.shared.players() { result in
            switch result {
            case .success(let players):
                self.players = players
            case .failure(let error):
                self.error = error
            }
        }
    }
}

#Preview {
    LeaderboardView()
}
