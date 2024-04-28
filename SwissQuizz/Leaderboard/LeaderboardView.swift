//
//  LeaderboardView.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 14.02.2024.
//

import SwiftUI
import GameKit

struct LeaderboardView: View {
    @State private var players: [Playable]?
    @State private var error: LeaderboardError?
    @EnvironmentObject var leaderboard: Leaderboard

    var body: some View {
        if !leaderboard.isGameCenterOn {
            EnableLeaderboardView()
        } else if let players = players {
            VStack {
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
                
                if ProcessInfo.processInfo.environment["XCODE_RUNNING_FOR_PREVIEWS"] == "1" && players.count < 10 {
                    let missing_ranks = 10 - players.count
                    for i in 1...missing_ranks {
                        self.players!.append(DummyPlayer(rank: players.count + i, minScore: players[players.count - 1].score))
                    }
                }
            case .failure(let error):
                self.error = error
            }
        }
    }
}

#Preview {
    TabView(selection: .constant(2)) {
        Text("dummy")
            .tabItem {
                Label("Quizzes", systemImage: "rectangle.stack.fill")
            }
            .tag(1)
        LeaderboardView()
            .environmentObject(Leaderboard.shared)
            .tabItem {
                Label("Leaderboard", systemImage: "list.star")
            }
            .tag(2)
        Text("dummy")
            .tabItem {
                Label("Profile", systemImage: "person.fill")
            }
            .tag(3)
    }
}
