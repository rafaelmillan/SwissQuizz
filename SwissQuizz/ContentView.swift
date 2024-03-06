//
//  ContentView.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 04.12.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 1
    @StateObject private var leaderboard = Leaderboard.shared
    @StateObject private var scores = Scores.shared
    
    var body: some View {
        TabView(selection: $selection) {
            QuizzesView()
                .tabItem {
                    Label("Quizzes", systemImage: "checkmark.rectangle.stack.fill")
                }
                .tag(1)
            LeaderboardView()
                .tabItem {
                    Label("Leaderboard", systemImage: "list.star")
                }
                .tag(2)
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
                .tag(3)
        }
        .environmentObject(leaderboard)
        .environmentObject(scores)
    }
}

#Preview {
    ContentView()
}
