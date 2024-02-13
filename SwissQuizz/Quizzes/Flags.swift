//
//  Capitals.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 14.12.2023.
//

import Foundation

extension Quiz {
    static let flags = Quiz(
        id: "flags",
        label: "Flags",
        description: "Find which canton a flag belongs to",
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
            Question(
                prompt: "Which canton is this flag from?",
                image: "flags/appenzellAusserrhoden",
                choices: [
                    Choice(text: "Appenzell Ausserrhoden", isCorrect: true),
                    Choice(text: "Fribourg"),
                    Choice(text: "Basel-Stadt"),
                    Choice(text: "Schaffhausen")
                ]
            ),
            Question(
                prompt: "Which canton is this flag from?",
                image: "flags/appenzellInnerrhoden",
                choices: [
                    Choice(text: "Fribourg"),
                    Choice(text: "Appenzell Innerrhoden", isCorrect: true),
                    Choice(text: "Basel-Stadt"),
                    Choice(text: "Schaffhausen")
                ]
            ),
            Question(
                prompt: "Which canton is this flag from?",
                image: "flags/baselLandschaft",
                choices: [
                    Choice(text: "Basel-Landschaft", isCorrect: true),
                    Choice(text: "Jura"),
                    Choice(text: "Valais"),
                    Choice(text: "Obwalden")
                ]
            ),
            Question(
                prompt: "Which canton is this flag from?",
                image: "flags/baselStadt",
                choices: [
                    Choice(text: "Basel-Stadt", isCorrect: true),
                    Choice(text: "Appenzell Innerrhoden"),
                    Choice(text: "Fribourg"),
                    Choice(text: "Appenzell Ausserrhoden")
                ]
            ),
            Question(
                prompt: "Which canton is this flag from?",
                image: "flags/bern",
                choices: [
                    Choice(text: "Bern", isCorrect: true),
                    Choice(text: "Geneva"),
                    Choice(text: "Glarus"),
                    Choice(text: "Schaffhausen")
                ]
            ),
            Question(
                prompt: "Which canton is this flag from?",
                image: "flags/fribourg",
                choices: [
                    Choice(text: "Fribourg", isCorrect: true),
                    Choice(text: "Zug"),
                    Choice(text: "Basel-Stadt"),
                    Choice(text: "Solothurn")
                ]
            ),
            Question(
                prompt: "Which canton is this flag from?",
                image: "flags/geneva",
                choices: [
                    Choice(text: "Geneva", isCorrect: true),
                    Choice(text: "Glarus"),
                    Choice(text: "Bern"),
                    Choice(text: "Schaffhausen")
                ]
            ),
            Question(
                prompt: "Which canton is this flag from?",
                image: "flags/glarus",
                choices: [
                    Choice(text: "Glarus", isCorrect: true),
                    Choice(text: "Schwyz"),
                    Choice(text: "Bern"),
                    Choice(text: "Nidwalden")
                ]
            ),
            Question(
                prompt: "Which canton is this flag from?",
                image: "flags/grisons",
                choices: [
                    Choice(text: "Grisons", isCorrect: true),
                    Choice(text: "Thurgau"),
                    Choice(text: "Geneva"),
                    Choice(text: "Obwalden")
                ]
            ),
            Question(
                prompt: "Which canton is this flag from?",
                image: "flags/jura",
                choices: [
                    Choice(text: "Jura", isCorrect: true),
                    Choice(text: "Valais"),
                    Choice(text: "Basel-Landschaft"),
                    Choice(text: "Obwalden")
                ]
            ),
            Question(
                prompt: "Which canton is this flag from?",
                image: "flags/lucerne",
                choices: [
                    Choice(text: "Lucerne", isCorrect: true),
                    Choice(text: "Zürich"),
                    Choice(text: "Zug"),
                    Choice(text: "Aargau")
                ]
            ),
            Question(
                prompt: "Which canton is this flag from?",
                image: "flags/neuchatel",
                choices: [
                    Choice(text: "Neuchâtel", isCorrect: true),
                    Choice(text: "Ticino"),
                    Choice(text: "Vaud"),
                    Choice(text: "St. Gallen")
                ]
            ),
            Question(
                prompt: "Which canton is this flag from?",
                image: "flags/nidwalden",
                choices: [
                    Choice(text: "Nidwalden", isCorrect: true),
                    Choice(text: "Schwyz"),
                    Choice(text: "Solothurn"),
                    Choice(text: "Jura")
                ]
            ),
            Question(
                prompt: "Which canton is this flag from?",
                image: "flags/obwalden",
                choices: [
                    Choice(text: "Obwalden", isCorrect: true),
                    Choice(text: "Valais"),
                    Choice(text: "Solothurn"),
                    Choice(text: "Jura")
                ]
            ),
            Question(
                prompt: "Which canton is this flag from?",
                image: "flags/schaffhausen",
                choices: [
                    Choice(text: "Schaffhausen", isCorrect: true),
                    Choice(text: "Uri"),
                    Choice(text: "Appenzell Innerrhoden"),
                    Choice(text: "Geneva")
                ]
            ),
            Question(
                prompt: "Which canton is this flag from?",
                image: "flags/schwyz",
                choices: [
                    Choice(text: "Schwyz", isCorrect: true),
                    Choice(text: "Glarus"),
                    Choice(text: "Ticino"),
                    Choice(text: "Solothurn")
                ]
            ),
            Question(
                prompt: "Which canton is this flag from?",
                image: "flags/solothurn",
                choices: [
                    Choice(text: "Solothurn", isCorrect: true),
                    Choice(text: "Obwalden"),
                    Choice(text: "Valais"),
                    Choice(text: "Jura")
                ]
            ),
            Question(
                prompt: "Which canton is this flag from?",
                image: "flags/stGallen",
                choices: [
                    Choice(text: "St. Gallen", isCorrect: true),
                    Choice(text: "Thurgau"),
                    Choice(text: "Vaud"),
                    Choice(text: "Neuchâtel")
                ]
            ),
            Question(
                prompt: "Which canton is this flag from?",
                image: "flags/thurgau",
                choices: [
                    Choice(text: "Thurgau", isCorrect: true),
                    Choice(text: "St. Gallen"),
                    Choice(text: "Grisons"),
                    Choice(text: "Appenzell Innerrhoden")
                ]
            ),
            Question(
                prompt: "Which canton is this flag from?",
                image: "flags/ticino",
                choices: [
                    Choice(text: "Ticino", isCorrect: true),
                    Choice(text: "Neuchâtel"),
                    Choice(text: "Glarus"),
                    Choice(text: "Schwyz")
                ]
            ),
            Question(
                prompt: "Which canton is this flag from?",
                image: "flags/uri",
                choices: [
                    Choice(text: "Uri", isCorrect: true),
                    Choice(text: "Schaffhausen"),
                    Choice(text: "Bern"),
                    Choice(text: "Thurgau")
                ]
            ),
            Question(
                prompt: "Which canton is this flag from?",
                image: "flags/valais",
                choices: [
                    Choice(text: "Valais", isCorrect: true),
                    Choice(text: "Solothurn"),
                    Choice(text: "Obwalden"),
                    Choice(text: "Jura")
                ]
            ),
            Question(
                prompt: "Which canton is this flag from?",
                image: "flags/vaud",
                choices: [
                    Choice(text: "Vaud", isCorrect: true),
                    Choice(text: "Thurgau"),
                    Choice(text: "St. Gallen"),
                    Choice(text: "Geneva")
                ]
            ),
            Question(
                prompt: "Which canton is this flag from?",
                image: "flags/zug",
                choices: [
                    Choice(text: "Zug", isCorrect: true),
                    Choice(text: "Zürich"),
                    Choice(text: "Lucerne"),
                    Choice(text: "Aargau")
                ]
            ),
            Question(
                prompt: "Which canton is this flag from?",
                image: "flags/zurich",
                choices: [
                    Choice(text: "Zürich", isCorrect: true),
                    Choice(text: "Zug"),
                    Choice(text: "Lucerne"),
                    Choice(text: "Aargau")
                ]
            )
        ]
    )
}
