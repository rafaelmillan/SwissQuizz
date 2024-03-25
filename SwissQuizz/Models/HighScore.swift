//
//  Score.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 06.03.2024.
//

import Foundation

@MainActor class HighScore: ObservableObject {
    let quizId: String
    @Published var points: Int {
        didSet {
            HighScores.update(self)
        }
    }

    init(quizId: String, points: Int) {
        self.quizId = quizId
        self.points = points
    }

    func submit(_ newPoints: Int) {
        if newPoints > points {
            self.points = newPoints
        }
    }
}
