//
//  Quiz.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 07.01.2024.
//

import Foundation
import GameplayKit
import GameKit

struct Quiz: Identifiable, Hashable {
    var id: String
    var label: String
    var description: String
    var systemImage: String
    var questions: [Question]
    
    var maxScore: Int {
        return Quiz.maxScores[id] ?? 0
    }

    func updateMaxScore(_ newScore: Int) {
        var newMaxScore: Int? = nil
        var maxScores = Quiz.maxScores
        
        if let previousMaxScore = maxScores[id] {
            if newScore > previousMaxScore {
                newMaxScore = newScore
            }
        } else {
            newMaxScore = newScore
        }

        if let newMaxScore = newMaxScore {
            maxScores[id] = newMaxScore
            UserDefaults.standard.set(maxScores, forKey: "maxScores")
        }
    
        Leaderboard.shared.submitScore(Quiz.maxScoreSum)
    }
    
    static var maxScores: [String: Int] {
        if let scores = UserDefaults.standard.dictionary(forKey: "maxScores") as? [String: Int] {
            return scores
        } else {
            return [:]
        }
    }
    
    static var maxScoreSum: Int {
        maxScores.values.reduce(0, +)
    }

    func shuffledQuestions(seed: Int) -> [Question] {
        GKMersenneTwisterRandomSource(seed: UInt64(seed)).arrayByShufflingObjects(in: questions) as! [Question]
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    static func == (lhs: Quiz, rhs: Quiz) -> Bool {
        lhs.id == rhs.id
    }
}
