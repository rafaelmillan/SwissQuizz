//
//  ProfileView.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 01.03.2024.
//

import SwiftUI

struct ProfileView: View {
    private var isGameCenterOn: Binding<Bool> {
        Binding {
            leaderboard.isGameCenterOn
        } set: {
            leaderboard.isGameCenterOn = $0
        }
    }
    @State private var showResetDialog = false
    @EnvironmentObject var leaderboard: Leaderboard
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    Toggle("Game Center", isOn: isGameCenterOn)
                } footer: {
                    Text("Game Center is required to see the leaderboard and submit your scores.")
                }
                
                Section {
                    Button("Reset All High Scores") {
                        showResetDialog = true
                    }
                }
                
                Section {
                    NavigationLink("Credits") {
                        List {
                            Text("swisstopo")
                            Text("Wikipedia")
                        }
                    }
                }
            }
            .confirmationDialog("Reset All High Scores", isPresented: $showResetDialog) {
                Button("Reset", role: .destructive) { Scores.reset() }
                Button("Cancel", role: .cancel) { }
            } message: {
                Text("Are you sure that you want to reset all your high scores?")
            }
        }
    }
}

#Preview {
    ProfileView()
        .environmentObject(Leaderboard.shared)
}
