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

class Leaderboard {
    static let shared = Leaderboard()
    static let userDefaultsKey = "isGameCenterOn"

    var isGameCenterOn: Bool {
        get {
            UserDefaults.standard.bool(forKey: Leaderboard.userDefaultsKey)
        }
        set(newIsGameCenterOn) {
            UserDefaults.standard.set(newIsGameCenterOn, forKey: Leaderboard.userDefaultsKey)
        }
    }
    
    func players(completionHandler: @escaping (Result<[Player], LeaderboardError>) -> Void) {
        withAuthenticatedUser() {
            GKLeaderboard.loadLeaderboards(IDs: ["general"]) { leaderboards, error in
                if let leaderboards = leaderboards {
                    leaderboards[0].loadEntries(for: GKLeaderboard.PlayerScope.global, timeScope: GKLeaderboard.TimeScope.allTime, range: NSMakeRange(1, 100)) { _entry, entries, _count, _error in
                        if let entries = entries {
                            let players = entries.map { entry in
                                Player(
                                    formattedScore: entry.formattedScore,
                                    displayName: entry.player.displayName,
                                    rank: entry.rank,
                                    gkPlayer: entry.player
                                )
                            }
                            completionHandler(.success(players))
                        } else {
                            completionHandler(.failure(.loadingError))
                        }
                    }
                } else {
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
                onError()
            }
        }
    }
}
