//
//  ScoreData.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 06.03.2024.
//

import Foundation

struct HighScoreData {
    static let persistenceKey = "scores"
    
    static var load: [String: Int] {
        if let all = UserDefaults.standard.dictionary(forKey: persistenceKey) as? [String: Int] {
            return all
        } else {
            return [:]
        }
    }
    
    static func save(quizId: String, points: Int) {
        var scores = load
        scores[quizId] = points
        UserDefaults.standard.set(scores, forKey: persistenceKey)
    }
    
    static func reset() {
        UserDefaults.standard.removeObject(forKey: persistenceKey)
    }
}
