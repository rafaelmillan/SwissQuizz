//
//  ContentView.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 04.12.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 1
    
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
        }
    }
}

#Preview {
    ContentView()
}
