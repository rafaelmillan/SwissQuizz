//
//  EnableLeaderboardView.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 27.02.2024.
//

import SwiftUI

struct EnableLeaderboardView: View {
    @Binding var isGameCenterOn: Bool
    
    var body: some View {
        GroupBox(label:
            Label("Game Center", systemImage: "person.3.fill")
        ) {
            Text("Do you want to use Game Center to submit your scores and see other users' scores? You can always turn it off in the Settings.")
            .font(.footnote)
            .frame(maxWidth: .infinity, alignment: .leading)
            Toggle(isOn: $isGameCenterOn.animation()) {
                Text("Enable Game Center")
            }.onChange(of: isGameCenterOn) {
                Leaderboard.shared.isGameCenterOn = $0
            }
        }
        .padding()
    }
}

#Preview {
    EnableLeaderboardView(isGameCenterOn: .constant(false))
}
