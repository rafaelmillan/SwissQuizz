//
//  ContentView.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 04.12.2023.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        TabView {
            QuizzesView()
                .tabItem {
                    Label("Quizzes", systemImage: "checkmark.rectangle.stack.fill")
                }
            LeaderboardView()
                .tabItem {
                    Label("Leaderboard", systemImage: "list.star")
                }
        }
    }
}

#Preview {
    ContentView()
}
