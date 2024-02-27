//
//  GameCenterLeaderboardView.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 17.02.2024.
//

import SwiftUI
import GameKit

struct GameCenterLeaderboardView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> GKGameCenterViewController {
        let viewController = GKGameCenterViewController(
                        leaderboardID: "general",
                        playerScope: .global,
                        timeScope: .allTime)
//        viewController.gameCenterDelegate = self
        return viewController
    }
    
    func updateUIViewController(_ uiViewController: GKGameCenterViewController, context: Context) {
        // Updates go here
    }
    
    typealias UIViewControllerType = GKGameCenterViewController
}

#Preview {
    GameCenterLeaderboardView()
}
