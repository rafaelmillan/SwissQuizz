//
//  Capitals.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 14.12.2023.
//

import Foundation

extension Quiz {
    static let test = Quiz(
        id: "test",
        label: "Test",
        description: "For testing",
        systemImage: "flag.filled.and.flag.crossed",
        questions: [
            Question(
                prompt: "Which canton is this flag from?",
                image: "flags/aargau",
                choices: [
                    Choice(text: "Aargau", isCorrect: true),
                    Choice(text: "Luzern"),
                    Choice(text: "Zug"),
                    Choice(text: "Zürich")
                ]
            ),
        ]
    )
}
