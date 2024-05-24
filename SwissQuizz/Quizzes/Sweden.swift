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
                prompt: String(localized: "Where are Frick and Frack from?"),
                image: "sweden/frickFrack",
                choices: [
                    Choice(text: String(localized: "Switzerland"), isCorrect: true),
                    Choice(text: String(localized: "Sweden"))
                ]
            ),
            Question(
                prompt: String(localized: "Where is the inventor of Tetra Pak from?"),
                image: "sweden/tetraPak",
                choices: [
                    Choice(text: String(localized: "Sweden"), isCorrect: true),
                    Choice(text: String(localized: "Switzerland"))
                ],
                credit: Credit(label: "Tetra Pak, CC BY-SA 2.0", urlString: "https://w.wiki/AAYf")
            ),
            Question(
                prompt: String(localized: "Where is the inventor of velcro from?"),
                image: "sweden/velcro",
                choices: [
                    Choice(text: String(localized: "Switzerland"), isCorrect: true),
                    Choice(text: String(localized: "Sweden"))
                ],
                credit: Credit(label: "Trazyanderson, CC BY-SA 4.0", urlString: "https://w.wiki/AAYg")
            ),
            Question(
                prompt: String(localized: "Where was bobsled invented?"),
                image: "sweden/bobsled",
                choices: [
                    Choice(text: String(localized: "Switzerland"), isCorrect: true),
                    Choice(text: String(localized: "Sweden"))
                ],
                credit: Credit(label: "Bundesarchiv, Bild 183-09740-0004 / CC-BY-SA 3.0", urlString: "https://w.wiki/AAYi")
            ),
            Question(
                prompt: String(localized: "Where is stone throwing from?"),
                image: "sweden/stones",
                choices: [
                    Choice(text: String(localized: "Switzerland"), isCorrect: true),
                    Choice(text: String(localized: "Sweden"))
                ],
                credit: Credit(label: "Comet Photo, CC BY-SA 4.0", urlString: "https://w.wiki/AAYm")
            ),
            Question(
                prompt: String(localized: "Where is the inventor of dynamite from?"),
                image: "sweden/dynamite",
                choices: [
                    Choice(text: String(localized: "Sweden"), isCorrect: true),
                    Choice(text: String(localized: "Switzerland"))
                ]
            ),
            Question(
                prompt: String(localized: "Where is the designer of the zipper from?"),
                image: "sweden/zipper",
                choices: [
                    Choice(text: String(localized: "Sweden"), isCorrect: true),
                    Choice(text: String(localized: "Switzerland"))
                ],
                credit: Credit(label: "Rabensteiner, CC BY 3.0", urlString: "https://w.wiki/AAYq")
            ),
            Question(
                prompt: String(localized: "Where is the inventor of the plumber wrench from?"),
                image: "sweden/wrench",
                choices: [
                    Choice(text: String(localized: "Sweden"), isCorrect: true),
                    Choice(text: String(localized: "Switzerland"))
                ]
            ),
            Question(
                prompt: String(localized: "Where are cinnamon rolls from?"),
                image: "sweden/cinnamonRoll",
                choices: [
                    Choice(text: String(localized: "Sweden"), isCorrect: true),
                    Choice(text: String(localized: "Switzerland"))
                ],
                credit: Credit(label: "Kritzolina, CC BY-SA 4.0", urlString: "https://w.wiki/AAZ4")
            ),
            Question(
                prompt: String(localized: "Where is absinthe from?"),
                image: "sweden/absinthe",
                choices: [
                    Choice(text: String(localized: "Switzerland"), isCorrect: true),
                    Choice(text: String(localized: "Sweden"))
                ],
                credit: Credit(label: "Хрюша, CC BY-SA 3.0", urlString: "https://w.wiki/AAZ5")
            )
        ]
    )
}
