//
//  Scores.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 06.03.2024.
//

import Foundation

@MainActor class HighScores: ObservableObject {
    static let shared: HighScores = .init()

    @Published var sum: Int = 0
    var all: [HighScore]
    
    init() {
        all = HighScoreData.load.map { quizId, score in
            HighScore(quizId: quizId, points: score)
        }
        sum = Self.sum
    }
        
    static func find(_ quizId: String) -> HighScore {
        let score = shared.all.first(where: { $0.quizId == quizId })
        if let score = score {
            return score
        } else {
            let score = HighScore(quizId: quizId, points: 0)
            shared.all.append(score)
            return score
        }
    }
    
    static func reset() {
        HighScoreData.reset()
        shared.all.forEach { $0.points = 0 }
        shared.refreshSum()
    }
    
    static func update(_ score: HighScore) {
        HighScoreData.save(quizId: score.quizId, points: score.points)
        shared.refreshSum()
        Leaderboard.shared.submitScore(shared.sum)
    }
    
    private func refreshSum() {
        sum = HighScores.sum
    }
    
    private static var sum: Int {
        HighScoreData.load.values.reduce(0, +)
    }
}
