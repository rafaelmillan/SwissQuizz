//
//  Capitals.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 14.12.2023.
//

import Foundation

struct FoodQuiz: Quiz {
    var slug: String { "food" }
    var label: String { "Food" }
    var systemImage: String { "building" }
    var questions: [Question] {
        [
            Question(
                prompt: "Where does Gruyère AOP come from?",
                allowMultipleAnswers: true,
                answers: [
                    Answer(text: "Fribourg", isCorrect: true),
                    Answer(text: "Vaud", isCorrect: true),
                    Answer(text: "Neuchâtel", isCorrect: true),
                    Answer(text: "Jura", isCorrect: true),
                    Answer(text: "Bern", isCorrect: true)
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
