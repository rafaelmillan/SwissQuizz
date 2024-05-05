//
//  Capitals.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 14.12.2023.
//

import Foundation

extension Quiz {
    static let sweden = Quiz(
        id: "sweden",
        label: String(localized: "Sweden or Switzerland?"),
        description: String(localized: "The ultimate country rivalry"),
        systemImage: "crown.fill",
        questions: [
            Question(
                prompt: String(localized: "Frick and Frack"),
                image: "sweden/frickFrack",
                choices: [
                    Choice(text: String(localized: "Switzerland"), isCorrect: true),
                    Choice(text: String(localized: "Sweden"))
                ]
            ),
            Question(
                prompt: String(localized: "The inventor of Tetra Pak"),
                image: "sweden/tetraPak",
                choices: [
                    Choice(text: String(localized: "Sweden"), isCorrect: true),
                    Choice(text: String(localized: "Switzerland"))
                ]
            ),
            Question(
                prompt: String(localized: "Velcro"),
                image: "sweden/velcro",
                choices: [
                    Choice(text: String(localized: "Switzerland"), isCorrect: true),
                    Choice(text: String(localized: "Sweden"))
                ]
            ),
            Question(
                prompt: String(localized: "Bobsled"),
                image: "sweden/bobsled",
                choices: [
                    Choice(text: String(localized: "Switzerland"), isCorrect: true),
                    Choice(text: String(localized: "Sweden"))
                ]
            ),
            Question(
                prompt: String(localized: "Stone throwing"),
                image: "sweden/stones",
                choices: [
                    Choice(text: String(localized: "Switzerland"), isCorrect: true),
                    Choice(text: String(localized: "Sweden"))
                ]
            ),
            Question(
                prompt: String(localized: "Dynamite"),
                image: "sweden/dynamite",
                choices: [
                    Choice(text: String(localized: "Sweden"), isCorrect: true),
                    Choice(text: String(localized: "Switzerland"))
                ]
            ),
            Question(
                prompt: String(localized: "The modern zipper"),
                image: "sweden/zipper",
                choices: [
                    Choice(text: String(localized: "Sweden"), isCorrect: true),
                    Choice(text: String(localized: "Switzerland"))
                ]
            ),
            Question(
                prompt: String(localized: "The plumber wrench"),
                image: "sweden/wrench",
                choices: [
                    Choice(text: String(localized: "Sweden"), isCorrect: true),
                    Choice(text: String(localized: "Switzerland"))
                ]
            ),
            Question(
                prompt: String(localized: "Cinnamon rolls"),
                image: "sweden/cinnamonRoll",
                choices: [
                    Choice(text: String(localized: "Sweden"), isCorrect: true),
                    Choice(text: String(localized: "Switzerland"))
                ]
            ),
            Question(
                prompt: String(localized: "Absinthe"),
                image: "sweden/absinthe",
                choices: [
                    Choice(text: String(localized: "Switzerland"), isCorrect: true),
                    Choice(text: String(localized: "Sweden"))
                ]
            )
        ]
    )
}
