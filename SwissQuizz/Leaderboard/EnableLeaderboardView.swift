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
            Label("Enable Game Center", systemImage: "person.3.fill")
        ) {
            Text("To display the leaderboard please enable Game Center for this app. You can always turn it off in the Settings.")
            .font(.footnote)
            .frame(maxWidth: .infinity, alignment: .leading)
            Toggle(isOn: $isGameCenterOn) {
                Text("I want to enable Game Center")
            }
        }
        .padding()
    }
}

#Preview {
    EnableLeaderboardView(isGameCenterOn: .constant(true))
}
