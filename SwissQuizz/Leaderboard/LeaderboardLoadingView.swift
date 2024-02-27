//
//  LeaderboardLoadingView.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 27.02.2024.
//

import SwiftUI

struct LeaderboardLoadingView: View {
    var error: LeaderboardError?
    
    var body: some View {
        switch error {
        case .loadingError:
            VStack {
                Text("There was an error loading the leaderboard.")
            }
        case .notAuthenticated:
            VStack {
                Text("Please log in to GameCenter to continue.")
            }
        default:
            ProgressView("Loading leaderboard...")
        }
    }
}

#Preview {
    Group {
        LeaderboardLoadingView(error: .loadingError)
        LeaderboardLoadingView(error: .notAuthenticated)
        LeaderboardLoadingView(error: nil)
    }
}
