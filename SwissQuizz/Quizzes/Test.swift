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
                prompt: String(localized: "Which canton is this flag from?"),
                image: "flags/aargau",
                choices: [
                    Choice(text: String(localized: "Aargau"), isCorrect: true),
                    Choice(text: String(localized: "Lucerne")),
                    Choice(text: String(localized: "Zug")),
                    Choice(text: String(localized: "Zürich"))
                ]
            ),
        ]
    )
}
