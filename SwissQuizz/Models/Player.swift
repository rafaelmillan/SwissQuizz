//
//  Player.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 27.02.2024.
//

import Foundation
import GameKit

protocol Playable {
    var score: Int { get }
    var displayName: String { get }
    var rank: Int { get }
    func loadImage(onComplete: @escaping (UIImage) -> Void)
}

struct Player: Playable {
    let score: Int
    let displayName: String
    let rank: Int
    var gkPlayer: GKPlayer
    
    @MainActor func loadImage(onComplete: @escaping (UIImage) -> Void) {
        Leaderboard.shared.playerPhoto(gkPlayer: gkPlayer, onComplete: onComplete)
    }
}

struct DummyPlayer: Playable {
    let rank: Int
    let minScore: Int
    
    var score: Int {
        minScore - (123 * rank)
    }
    var displayName: String {
        switch rank {
        case 1: "Rafikucho"
        case 2: "TheTicinese"
        case 3: "GoServette"
        case 4: "RamonGR"
        case 5: "Mutschgetnuss"
        case 6: "MariaMüller"
        case 7: "LucaRossi"
        case 8: "RicardoLopes"
        case 9: "Zucchini500"
        case 10: "Krasniqi"
        default: "Toto"
        }
    }
    
    @MainActor func loadImage(onComplete: @escaping (UIImage) -> Void) {
        let image = UIImage(named: "memojis/\(rank)")
        if let image = image {
            onComplete(image)
        }
    }
}
