//
//  Capitals.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 14.12.2023.
//

import Foundation

struct GrowthQuiz: Quiz {
    var slug: String { "growth" }
    var label: String { "Growth" }
    var systemImage: String { "building" }
    var questions: [Question] {
        [
            Question(
                prompt: "What is the capital of Geneva?",
                answers: [
                    Answer(text: "Geneva", isCorrect: true),
                    Answer(text: "Meyrin"),
                    Answer(text: "Carouge"),
                    Answer(text: "Lancy")
                ]
            ),
            Question(
                prompt: "What is the capital of Vaud?",
                answers: [
                    Answer(text: "Lausanne", isCorrect: true),
                    Answer(text: "Nyon"),
                    Answer(text: "Montreux"),
                    Answer(text: "Vevey")
                ]
            )
        ]
    }
}
