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
        description: "Find the flag of each canton",
        systemImage: "flag.filled.and.flag.crossed",
        questions: [
            Question(
                prompt: String(localized: "Which canton is this flag from?"),
                image: "flags/aargau",
                choices: [
                    Choice(text: String(localized: "Aargau"), isCorrect: true),
                    Choice(text: String(localized: "Luzern")),
                    Choice(text: String(localized: "Zug")),
                    Choice(text: String(localized: "Zürich"))
                ]
            ),
            Question(
                prompt: String(localized: "Which canton is this flag from?"),
                image: "flags/appenzellAusserrhoden",
                choices: [
                    Choice(text: String(localized: "Appenzell Ausserrhoden"), isCorrect: true),
                    Choice(text: String(localized: "Fribourg")),
                    Choice(text: String(localized: "Basel-Stadt")),
                    Choice(text: String(localized: "Schaffhausen"))
                ]
            ),
            Question(
                prompt: String(localized: "Which canton is this flag from?"),
                image: "flags/appenzellInnerrhoden",
                choices: [
                    Choice(text: String(localized: "Fribourg")),
                    Choice(text: String(localized: "Appenzell Innerrhoden"), isCorrect: true),
                    Choice(text: String(localized: "Basel-Stadt")),
                    Choice(text: String(localized: "Schaffhausen"))
                ]
            ),
            Question(
                prompt: String(localized: "Which canton is this flag from?"),
                image: "flags/baselLandschaft",
                choices: [
                    Choice(text: String(localized: "Basel-Landschaft"), isCorrect: true),
                    Choice(text: String(localized: "Jura")),
                    Choice(text: String(localized: "Valais")),
                    Choice(text: String(localized: "Obwalden"))
                ]
            ),
            Question(
                prompt: String(localized: "Which canton is this flag from?"),
                image: "flags/baselStadt",
                choices: [
                    Choice(text: String(localized: "Basel-Stadt"), isCorrect: true),
                    Choice(text: String(localized: "Appenzell Innerrhoden")),
                    Choice(text: String(localized: "Fribourg")),
                    Choice(text: String(localized: "Appenzell Ausserrhoden"))
                ]
            ),
            Question(
                prompt: String(localized: "Which canton is this flag from?"),
                image: "flags/bern",
                choices: [
                    Choice(text: String(localized: "Bern"), isCorrect: true),
                    Choice(text: String(localized: "Geneva")),
                    Choice(text: String(localized: "Glarus")),
                    Choice(text: String(localized: "Schaffhausen"))
                ]
            ),
            Question(
                prompt: String(localized: "Which canton is this flag from?"),
                image: "flags/fribourg",
                choices: [
                    Choice(text: String(localized: "Fribourg"), isCorrect: true),
                    Choice(text: String(localized: "Zug")),
                    Choice(text: String(localized: "Basel-Stadt")),
                    Choice(text: String(localized: "Solothurn"))
                ]
            ),
            Question(
                prompt: String(localized: "Which canton is this flag from?"),
                image: "flags/geneva",
                choices: [
                    Choice(text: String(localized: "Geneva"), isCorrect: true),
                    Choice(text: String(localized: "Glarus")),
                    Choice(text: String(localized: "Bern")),
                    Choice(text: String(localized: "Schaffhausen"))
                ]
            ),
            Question(
                prompt: String(localized: "Which canton is this flag from?"),
                image: "flags/glarus",
                choices: [
                    Choice(text: String(localized: "Glarus"), isCorrect: true),
                    Choice(text: String(localized: "Schwyz")),
                    Choice(text: String(localized: "Bern")),
                    Choice(text: String(localized: "Nidwalden"))
                ]
            ),
            Question(
                prompt: String(localized: "Which canton is this flag from?"),
                image: "flags/grisons",
                choices: [
                    Choice(text: String(localized: "Grisons"), isCorrect: true),
                    Choice(text: String(localized: "Thurgau")),
                    Choice(text: String(localized: "Geneva")),
                    Choice(text: String(localized: "Obwalden"))
                ]
            ),
            Question(
                prompt: String(localized: "Which canton is this flag from?"),
                image: "flags/jura",
                choices: [
                    Choice(text: String(localized: "Jura"), isCorrect: true),
                    Choice(text: String(localized: "Valais")),
                    Choice(text: String(localized: "Basel-Landschaft")),
                    Choice(text: String(localized: "Obwalden"))
                ]
            ),
            Question(
                prompt: String(localized: "Which canton is this flag from?"),
                image: "flags/lucerne",
                choices: [
                    Choice(text: String(localized: "Lucerne"), isCorrect: true),
                    Choice(text: String(localized: "Zürich")),
                    Choice(text: String(localized: "Zug")),
                    Choice(text: String(localized: "Aargau"))
                ]
            ),
            Question(
                prompt: String(localized: "Which canton is this flag from?"),
                image: "flags/neuchatel",
                choices: [
                    Choice(text: String(localized: "Neuchâtel"), isCorrect: true),
                    Choice(text: String(localized: "Ticino")),
                    Choice(text: String(localized: "Vaud")),
                    Choice(text: String(localized: "St. Gallen"))
                ]
            ),
            Question(
                prompt: String(localized: "Which canton is this flag from?"),
                image: "flags/nidwalden",
                choices: [
                    Choice(text: String(localized: "Nidwalden"), isCorrect: true),
                    Choice(text: String(localized: "Schwyz")),
                    Choice(text: String(localized: "Solothurn")),
                    Choice(text: String(localized: "Jura"))
                ]
            ),
            Question(
                prompt: String(localized: "Which canton is this flag from?"),
                image: "flags/obwalden",
                choices: [
                    Choice(text: String(localized: "Obwalden"), isCorrect: true),
                    Choice(text: String(localized: "Valais")),
                    Choice(text: String(localized: "Solothurn")),
                    Choice(text: String(localized: "Jura"))
                ]
            ),
            Question(
                prompt: String(localized: "Which canton is this flag from?"),
                image: "flags/schaffhausen",
                choices: [
                    Choice(text: String(localized: "Schaffhausen"), isCorrect: true),
                    Choice(text: String(localized: "Uri")),
                    Choice(text: String(localized: "Appenzell Innerrhoden")),
                    Choice(text: String(localized: "Geneva"))
                ]
            ),
            Question(
                prompt: String(localized: "Which canton is this flag from?"),
                image: "flags/schwyz",
                choices: [
                    Choice(text: String(localized: "Schwyz"), isCorrect: true),
                    Choice(text: String(localized: "Glarus")),
                    Choice(text: String(localized: "Ticino")),
                    Choice(text: String(localized: "Solothurn"))
                ]
            ),
            Question(
                prompt: String(localized: "Which canton is this flag from?"),
                image: "flags/solothurn",
                choices: [
                    Choice(text: String(localized: "Solothurn"), isCorrect: true),
                    Choice(text: String(localized: "Obwalden")),
                    Choice(text: String(localized: "Valais")),
                    Choice(text: String(localized: "Jura"))
                ]
            ),
            Question(
                prompt: String(localized: "Which canton is this flag from?"),
                image: "flags/stGallen",
                choices: [
                    Choice(text: String(localized: "St. Gallen"), isCorrect: true),
                    Choice(text: String(localized: "Thurgau")),
                    Choice(text: String(localized: "Vaud")),
                    Choice(text: String(localized: "Neuchâtel"))
                ]
            ),
            Question(
                prompt: String(localized: "Which canton is this flag from?"),
                image: "flags/thurgau",
                choices: [
                    Choice(text: String(localized: "Thurgau"), isCorrect: true),
                    Choice(text: String(localized: "St. Gallen")),
                    Choice(text: String(localized: "Grisons")),
                    Choice(text: String(localized: "Appenzell Innerrhoden"))
                ]
            ),
            Question(
                prompt: String(localized: "Which canton is this flag from?"),
                image: "flags/ticino",
                choices: [
                    Choice(text: String(localized: "Ticino"), isCorrect: true),
                    Choice(text: String(localized: "Neuchâtel")),
                    Choice(text: String(localized: "Glarus")),
                    Choice(text: String(localized: "Schwyz"))
                ]
            ),
            Question(
                prompt: String(localized: "Which canton is this flag from?"),
                image: "flags/uri",
                choices: [
                    Choice(text: String(localized: "Uri"), isCorrect: true),
                    Choice(text: String(localized: "Schaffhausen")),
                    Choice(text: String(localized: "Bern")),
                    Choice(text: String(localized: "Thurgau"))
                ]
            ),
            Question(
                prompt: String(localized: "Which canton is this flag from?"),
                image: "flags/valais",
                choices: [
                    Choice(text: String(localized: "Valais"), isCorrect: true),
                    Choice(text: String(localized: "Solothurn")),
                    Choice(text: String(localized: "Obwalden")),
                    Choice(text: String(localized: "Jura"))
                ]
            ),
            Question(
                prompt: String(localized: "Which canton is this flag from?"),
                image: "flags/vaud",
                choices: [
                    Choice(text: String(localized: "Vaud"), isCorrect: true),
                    Choice(text: String(localized: "Thurgau")),
                    Choice(text: String(localized: "St. Gallen")),
                    Choice(text: String(localized: "Geneva"))
                ]
            ),
            Question(
                prompt: String(localized: "Which canton is this flag from?"),
                image: "flags/zug",
                choices: [
                    Choice(text: String(localized: "Zug"), isCorrect: true),
                    Choice(text: String(localized: "Zürich")),
                    Choice(text: String(localized: "Lucerne")),
                    Choice(text: String(localized: "Aargau"))
                ]
            ),
            Question(
                prompt: String(localized: "Which canton is this flag from?"),
                image: "flags/zurich",
                choices: [
                    Choice(text: String(localized: "Zürich"), isCorrect: true),
                    Choice(text: String(localized: "Zug")),
                    Choice(text: String(localized: "Lucerne")),
                    Choice(text: String(localized: "Aargau"))
                ]
            )
        ]
    )
}
