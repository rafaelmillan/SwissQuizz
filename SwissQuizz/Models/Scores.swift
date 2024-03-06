//
//  Scores.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 06.03.2024.
//

import Foundation

@MainActor class Scores: ObservableObject {
    static let shared: Scores = .init()

    @Published var sum: Int = 0
    var all: [Score]
    
    init() {
        all = ScoreData.load.map { quizId, score in
            Score(quizId: quizId, points: score)
        }
        sum = Self.sum
    }
        
    static func find(_ quizId: String) -> Score {
        let score = shared.all.first(where: { $0.quizId == quizId })
        if let score = score {
            return score
        } else {
            let score = Score(quizId: quizId, points: 0)
            shared.all.append(score)
            return score
        }
    }
    
    static func reset() {
        ScoreData.reset()
        shared.all.forEach { $0.points = 0 }
        shared.refreshSum()
    }
    
    static func update(_ score: Score) {
        ScoreData.save(quizId: score.quizId, points: score.points)
        shared.refreshSum()
        Leaderboard.shared.submitScore(shared.sum)
    }
    
    private func refreshSum() {
        sum = Scores.sum
    }
    
    private static var sum: Int {
        ScoreData.load.values.reduce(0, +)
    }
}
