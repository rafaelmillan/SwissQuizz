//
//  EnableLeaderboardView.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 27.02.2024.
//

import SwiftUI

struct EnableLeaderboardView: View {
    @EnvironmentObject var leaderboard: Leaderboard
    private var isGameCenterOn: Binding<Bool> {
        Binding {
            leaderboard.isGameCenterOn
        } set: {
            leaderboard.isGameCenterOn = $0
        }
    }
    
    var body: some View {
        GroupBox(label:
            Label("Game Center", systemImage: "person.3.fill")
        ) {
            Text("Game Center is required to see the leaderboard and submit your scores.")
            .font(.footnote)
            .frame(maxWidth: .infinity, alignment: .leading)
            Toggle(isOn: isGameCenterOn.animation()) {
                Text("Enable Game Center")
            }
        }
        .padding()
    }
}

#Preview {
    EnableLeaderboardView()
        .environmentObject(Leaderboard.shared)
}
