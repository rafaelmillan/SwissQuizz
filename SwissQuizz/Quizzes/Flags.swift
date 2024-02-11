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
                answers: [
                    Answer(text: "Aargau", isCorrect: true),
                    Answer(text: "Luzern"),
                    Answer(text: "Zug"),
                    Answer(text: "Zürich")
                ]
            ),
            Question(
                prompt: "Which canton is this flag from?",
                image: "flags/appenzellAusserrhoden",
                answers: [
                    Answer(text: "Appenzell Ausserrhoden", isCorrect: true),
                    Answer(text: "Fribourg"),
                    Answer(text: "Basel-Stadt"),
                    Answer(text: "Schaffhausen")
                ]
            ),
            Question(
                prompt: "Which canton is this flag from?",
                image: "flags/appenzellInnerrhoden",
                answers: [
                    Answer(text: "Fribourg"),
                    Answer(text: "Appenzell Innerrhoden", isCorrect: true),
                    Answer(text: "Basel-Stadt"),
                    Answer(text: "Schaffhausen")
                ]
            ),
            Question(
                prompt: "Which canton is this flag from?",
                image: "flags/baselLandschaft",
                answers: [
                    Answer(text: "Basel-Landschaft", isCorrect: true),
                    Answer(text: "Jura"),
                    Answer(text: "Valais"),
                    Answer(text: "Obwalden")
                ]
            ),
            Question(
                prompt: "Which canton is this flag from?",
                image: "flags/baselStadt",
                answers: [
                    Answer(text: "Basel-Stadt", isCorrect: true),
                    Answer(text: "Appenzell Innerrhoden"),
                    Answer(text: "Fribourg"),
                    Answer(text: "Appenzell Ausserrhoden")
                ]
            ),
            Question(
                prompt: "Which canton is this flag from?",
                image: "flags/bern",
                answers: [
                    Answer(text: "Bern", isCorrect: true),
                    Answer(text: "Geneva"),
                    Answer(text: "Glarus"),
                    Answer(text: "Schaffhausen")
                ]
            ),
            Question(
                prompt: "Which canton is this flag from?",
                image: "flags/fribourg",
                answers: [
                    Answer(text: "Fribourg", isCorrect: true),
                    Answer(text: "Zug"),
                    Answer(text: "Basel-Stadt"),
                    Answer(text: "Solothurn")
                ]
            ),
            Question(
                prompt: "Which canton is this flag from?",
                image: "flags/geneva",
                answers: [
                    Answer(text: "Geneva", isCorrect: true),
                    Answer(text: "Glarus"),
                    Answer(text: "Bern"),
                    Answer(text: "Schaffhausen")
                ]
            ),
            Question(
                prompt: "Which canton is this flag from?",
                image: "flags/glarus",
                answers: [
                    Answer(text: "Glarus", isCorrect: true),
                    Answer(text: "Schwyz"),
                    Answer(text: "Bern"),
                    Answer(text: "Nidwalden")
                ]
            ),
            Question(
                prompt: "Which canton is this flag from?",
                image: "flags/grisons",
                answers: [
                    Answer(text: "Grisons", isCorrect: true),
                    Answer(text: "Thurgau"),
                    Answer(text: "Geneva"),
                    Answer(text: "Obwalden")
                ]
            ),
            Question(
                prompt: "Which canton is this flag from?",
                image: "flags/jura",
                answers: [
                    Answer(text: "Jura", isCorrect: true),
                    Answer(text: "Valais"),
                    Answer(text: "Basel-Landschaft"),
                    Answer(text: "Obwalden")
                ]
            ),
            Question(
                prompt: "Which canton is this flag from?",
                image: "flags/lucerne",
                answers: [
                    Answer(text: "Lucerne", isCorrect: true),
                    Answer(text: "Zürich"),
                    Answer(text: "Zug"),
                    Answer(text: "Aargau")
                ]
            ),
            Question(
                prompt: "Which canton is this flag from?",
                image: "flags/neuchatel",
                answers: [
                    Answer(text: "Neuchâtel", isCorrect: true),
                    Answer(text: "Ticino"),
                    Answer(text: "Vaud"),
                    Answer(text: "St. Gallen")
                ]
            ),
            Question(
                prompt: "Which canton is this flag from?",
                image: "flags/nidwalden",
                answers: [
                    Answer(text: "Nidwalden", isCorrect: true),
                    Answer(text: "Schwyz"),
                    Answer(text: "Solothurn"),
                    Answer(text: "Jura")
                ]
            ),
            Question(
                prompt: "Which canton is this flag from?",
                image: "flags/obwalden",
                answers: [
                    Answer(text: "Obwalden", isCorrect: true),
                    Answer(text: "Valais"),
                    Answer(text: "Solothurn"),
                    Answer(text: "Jura")
                ]
            ),
            Question(
                prompt: "Which canton is this flag from?",
                image: "flags/schaffhausen",
                answers: [
                    Answer(text: "Schaffhausen", isCorrect: true),
                    Answer(text: "Uri"),
                    Answer(text: "Appenzell Innerrhoden"),
                    Answer(text: "Geneva")
                ]
            ),
            Question(
                prompt: "Which canton is this flag from?",
                image: "flags/schwyz",
                answers: [
                    Answer(text: "Schwyz", isCorrect: true),
                    Answer(text: "Glarus"),
                    Answer(text: "Ticino"),
                    Answer(text: "Solothurn")
                ]
            ),
            Question(
                prompt: "Which canton is this flag from?",
                image: "flags/solothurn",
                answers: [
                    Answer(text: "Solothurn", isCorrect: true),
                    Answer(text: "Obwalden"),
                    Answer(text: "Valais"),
                    Answer(text: "Jura")
                ]
            ),
            Question(
                prompt: "Which canton is this flag from?",
                image: "flags/stGallen",
                answers: [
                    Answer(text: "St. Gallen", isCorrect: true),
                    Answer(text: "Thurgau"),
                    Answer(text: "Vaud"),
                    Answer(text: "Neuchâtel")
                ]
            ),
            Question(
                prompt: "Which canton is this flag from?",
                image: "flags/thurgau",
                answers: [
                    Answer(text: "Thurgau", isCorrect: true),
                    Answer(text: "St. Gallen"),
                    Answer(text: "Grisons"),
                    Answer(text: "Appenzell Innerrhoden")
                ]
            ),
            Question(
                prompt: "Which canton is this flag from?",
                image: "flags/ticino",
                answers: [
                    Answer(text: "Ticino", isCorrect: true),
                    Answer(text: "Neuchâtel"),
                    Answer(text: "Glarus"),
                    Answer(text: "Schwyz")
                ]
            ),
            Question(
                prompt: "Which canton is this flag from?",
                image: "flags/uri",
                answers: [
                    Answer(text: "Uri", isCorrect: true),
                    Answer(text: "Schaffhausen"),
                    Answer(text: "Bern"),
                    Answer(text: "Thurgau")
                ]
            ),
            Question(
                prompt: "Which canton is this flag from?",
                image: "flags/valais",
                answers: [
                    Answer(text: "Valais", isCorrect: true),
                    Answer(text: "Solothurn"),
                    Answer(text: "Obwalden"),
                    Answer(text: "Jura")
                ]
            ),
            Question(
                prompt: "Which canton is this flag from?",
                image: "flags/vaud",
                answers: [
                    Answer(text: "Vaud", isCorrect: true),
                    Answer(text: "Thurgau"),
                    Answer(text: "St. Gallen"),
                    Answer(text: "Geneva")
                ]
            ),
            Question(
                prompt: "Which canton is this flag from?",
                image: "flags/zug",
                answers: [
                    Answer(text: "Zug", isCorrect: true),
                    Answer(text: "Zürich"),
                    Answer(text: "Lucerne"),
                    Answer(text: "Aargau")
                ]
            ),
            Question(
                prompt: "Which canton is this flag from?",
                image: "flags/zurich",
                answers: [
                    Answer(text: "Zürich", isCorrect: true),
                    Answer(text: "Zug"),
                    Answer(text: "Lucerne"),
                    Answer(text: "Aargau")
                ]
            )
        ]
    )
}
