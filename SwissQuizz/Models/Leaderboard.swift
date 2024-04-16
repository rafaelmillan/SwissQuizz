//
//  Leaderboard.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 27.02.2024.
//

import Foundation
import GameKit

enum LeaderboardError: Error {
    case notAuthenticated
    case loadingError
}

@MainActor class Leaderboard: ObservableObject {
    static let shared = Leaderboard()
    static let userDefaultsKey = "isGameCenterOn"

    @Published var isGameCenterOn = UserDefaults.standard.bool(forKey: Leaderboard.userDefaultsKey) {
        didSet {
            UserDefaults.standard.set(isGameCenterOn, forKey: Leaderboard.userDefaultsKey)
        }
    }

    func players(completionHandler: @escaping (Result<[Player], LeaderboardError>) -> Void) {
        withAuthenticatedUser() {
            GKLeaderboard.loadLeaderboards(IDs: ["all"]) { leaderboards, error in
                if let leaderboards = leaderboards {
                    leaderboards[0].loadEntries(for: GKLeaderboard.PlayerScope.global, timeScope: GKLeaderboard.TimeScope.allTime, range: NSMakeRange(1, 10)) { _entry, entries, _count, error in
                        if let entries = entries {
                            let players = entries.map { entry in
                                Player(
                                    score: entry.score,
                                    displayName: entry.player.displayName,
                                    rank: entry.rank,
                                    gkPlayer: entry.player
                                )
                            }
                            completionHandler(.success(players))
                        } else {
                            print("Error: \(error?.localizedDescription).")
                            completionHandler(.failure(.loadingError))
                        }
                    }
                } else {
                    print("Error: \(error?.localizedDescription).")
                    completionHandler(.failure(.loadingError))
                }
                
            }
        } onError: {
            completionHandler(.failure(.notAuthenticated))
        }
    }
    
    func playerPhoto(gkPlayer: GKPlayer, onComplete: @escaping (UIImage) -> Void) {
        withAuthenticatedUser() {
            gkPlayer.loadPhoto(for: .small) { image, _error in
                if let image = image {
                    onComplete(image)
                }
            }
        } onError: {}
    }
    
    func submitScore(_ score: Int) {
        guard isGameCenterOn else { return }
        
        withAuthenticatedUser() {
            GKLeaderboard.submitScore(score, context: 0, player: GKLocalPlayer.local, leaderboardIDs: ["all"]) { error in
                if error != nil {
                    print("Error: \(error!.localizedDescription).")
                }
            }
        } onError: {}
    }
    
    private init() { }
    
    private func withAuthenticatedUser(onSuccess: @escaping () -> Void, onError:  @escaping () -> Void) {
        guard !GKLocalPlayer.local.isAuthenticated else {
            onSuccess()
            return
        }
        
        GKLocalPlayer.local.authenticateHandler = { _viewController, error in
            if error == nil {
                onSuccess()
            } else {
                print("Error: \(error?.localizedDescription).")
                onError()
            }
        }
    }
}
