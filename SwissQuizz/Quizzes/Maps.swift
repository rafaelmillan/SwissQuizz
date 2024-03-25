//
//  Capitals.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 14.12.2023.
//

import Foundation

extension Quiz {
    static let maps = Quiz(
        id: "maps",
        label: "Locate",
        description: "Spot each canton on the map",
        systemImage: "mappin.and.ellipse",
        questions: [
            Question(
                prompt: String(localized: "Which canton is located here?"),
                image: "maps/AG",
                choices: [
                    Choice(text: String(localized: "Aargau"), isCorrect: true),
                    Choice(text: String(localized: "Solothurn")),
                    Choice(text: String(localized: "Lucerne")),
                    Choice(text: String(localized: "Zürich"))
                ]
            ),
            Question(
                prompt: String(localized: "Which canton is located here?"),
                image: "maps/AR",
                choices: [
                    Choice(text: String(localized: "Appenzell Ausserrhoden"), isCorrect: true),
                    Choice(text: String(localized: "Appenzell Innerrhoden")),
                    Choice(text: String(localized: "Thurgau")),
                    Choice(text: String(localized: "St. Gallen"))
                ]
            ),
            Question(
                prompt: String(localized: "Which canton is located here?"),
                image: "maps/AI",
                choices: [
                    Choice(text: String(localized: "Appenzell Ausserrhoden")),
                    Choice(text: String(localized: "Appenzell Innerrhoden"), isCorrect: true),
                    Choice(text: String(localized: "Thurgau")),
                    Choice(text: String(localized: "St. Gallen"))
                ]
            ),
            Question(
                prompt: String(localized: "Which canton is located here?"),
                image: "maps/BL",
                choices: [
                    Choice(text: String(localized: "Basel-Landschaft"), isCorrect: true),
                    Choice(text: String(localized: "Basel-Stadt")),
                    Choice(text: String(localized: "Schaffhausen")),
                    Choice(text: String(localized: "Solothurn"))
                ]
            ),
            Question(
                prompt: String(localized: "Which canton is located here?"),
                image: "maps/BS",
                choices: [
                    Choice(text: String(localized: "Basel-Stadt"), isCorrect: true),
                    Choice(text: String(localized: "Basel-Landschaft")),
                    Choice(text: String(localized: "Schaffhausen")),
                    Choice(text: String(localized: "Jura"))
                ]
            ),
            Question(
                prompt: String(localized: "Which canton is located here?"),
                image: "maps/BE",
                choices: [
                    Choice(text: String(localized: "Bern"), isCorrect: true),
                    Choice(text: String(localized: "Fribourg")),
                    Choice(text: String(localized: "Lucerne")),
                    Choice(text: String(localized: "Valais"))
                ]
            ),
            Question(
                prompt: String(localized: "Which canton is located here?"),
                image: "maps/FR",
                choices: [
                    Choice(text: String(localized: "Fribourg"), isCorrect: true),
                    Choice(text: String(localized: "Bern")),
                    Choice(text: String(localized: "Vaud")),
                    Choice(text: String(localized: "Neuchâtel"))
                ]
            ),
            Question(
                prompt: String(localized: "Which canton is located here?"),
                image: "maps/GE",
                choices: [
                    Choice(text: String(localized: "Geneva"), isCorrect: true),
                    Choice(text: String(localized: "Vaud")),
                    Choice(text: String(localized: "Fribourg")),
                    Choice(text: String(localized: "Neuchâtel"))
                ]
            ),
            Question(
                prompt: String(localized: "Which canton is located here?"),
                image: "maps/GL",
                choices: [
                    Choice(text: String(localized: "Glarus"), isCorrect: true),
                    Choice(text: String(localized: "St. Gallen")),
                    Choice(text: String(localized: "Schwyz")),
                    Choice(text: String(localized: "Zug"))
                ]
            ),
            Question(
                prompt: String(localized: "Which canton is located here?"),
                image: "maps/GR",
                choices: [
                    Choice(text: String(localized: "Grisons"), isCorrect: true),
                    Choice(text: String(localized: "Ticino")),
                    Choice(text: String(localized: "Glarus")),
                    Choice(text: String(localized: "St. Gallen"))
                ]
            ),
            Question(
                prompt: String(localized: "Which canton is located here?"),
                image: "maps/JU",
                choices: [
                    Choice(text: String(localized: "Jura"), isCorrect: true),
                    Choice(text: String(localized: "Neuchâtel")),
                    Choice(text: String(localized: "Basel-Landschaft")),
                    Choice(text: String(localized: "Solothurn"))
                ]
            ),
            Question(
                prompt: String(localized: "Which canton is located here?"),
                image: "maps/LU",
                choices: [
                    Choice(text: String(localized: "Lucerne"), isCorrect: true),
                    Choice(text: String(localized: "Obwalden")),
                    Choice(text: String(localized: "Nidwalden")),
                    Choice(text: String(localized: "Uri"))
                ]
            ),
            Question(
                prompt: String(localized: "Which canton is located here?"),
                image: "maps/NE",
                choices: [
                    Choice(text: String(localized: "Neuchâtel"), isCorrect: true),
                    Choice(text: String(localized: "Jura")),
                    Choice(text: String(localized: "Vaud")),
                    Choice(text: String(localized: "Basel-Landschaft"))
                ]
            ),
            Question(
                prompt: String(localized: "Which canton is located here?"),
                image: "maps/NW",
                choices: [
                    Choice(text: String(localized: "Nidwalden"), isCorrect: true),
                    Choice(text: String(localized: "Obwalden")),
                    Choice(text: String(localized: "Uri")),
                    Choice(text: String(localized: "Schwyz"))
                ]
            ),
            Question(
                prompt: String(localized: "Which canton is located here?"),
                image: "maps/OW",
                choices: [
                    Choice(text: String(localized: "Obwalden"), isCorrect: true),
                    Choice(text: String(localized: "Nidwalden")),
                    Choice(text: String(localized: "Uri")),
                    Choice(text: String(localized: "Lucerne"))
                ]
            ),
            Question(
                prompt: String(localized: "Which canton is located here?"),
                image: "maps/SH",
                choices: [
                    Choice(text: String(localized: "Schaffhausen"), isCorrect: true),
                    Choice(text: String(localized: "Basel-Landschaft")),
                    Choice(text: String(localized: "Thurgau")),
                    Choice(text: String(localized: "Aargau"))
                ]
            ),
            Question(
                prompt: String(localized: "Which canton is located here?"),
                image: "maps/SZ",
                choices: [
                    Choice(text: String(localized: "Schwyz"), isCorrect: true),
                    Choice(text: String(localized: "Glarus")),
                    Choice(text: String(localized: "Zug")),
                    Choice(text: String(localized: "Uri"))
                ]
            ),
            Question(
                prompt: String(localized: "Which canton is located here?"),
                image: "maps/SO",
                choices: [
                    Choice(text: String(localized: "Solothurn"), isCorrect: true),
                    Choice(text: String(localized: "Aargau")),
                    Choice(text: String(localized: "Zürich")),
                    Choice(text: String(localized: "Schaffhausen"))
                ]
            ),
            Question(
                prompt: String(localized: "Which canton is located here?"),
                image: "maps/SG",
                choices: [
                    Choice(text: String(localized: "St. Gallen"), isCorrect: true),
                    Choice(text: String(localized: "Zürich")),
                    Choice(text: String(localized: "Schwyz")),
                    Choice(text: String(localized: "Glarus"))
                ]
            ),
            Question(
                prompt: String(localized: "Which canton is located here?"),
                image: "maps/TG",
                choices: [
                    Choice(text: String(localized: "Thurgau"), isCorrect: true),
                    Choice(text: String(localized: "Schaffhausen")),
                    Choice(text: String(localized: "Aargau")),
                    Choice(text: String(localized: "Appenzell Innerrhoden"))
                ]
            ),
            Question(
                prompt: String(localized: "Which canton is located here?"),
                image: "maps/TI",
                choices: [
                    Choice(text: String(localized: "Ticino"), isCorrect: true),
                    Choice(text: String(localized: "Valais")),
                    Choice(text: String(localized: "Grisons")),
                    Choice(text: String(localized: "Uri"))
                ]
            ),
            Question(
                prompt: String(localized: "Which canton is located here?"),
                image: "maps/UR",
                choices: [
                    Choice(text: String(localized: "Uri"), isCorrect: true),
                    Choice(text: String(localized: "Obwalden")),
                    Choice(text: String(localized: "Glarus")),
                    Choice(text: String(localized: "Schwyz"))
                ]
            ),
            Question(
                prompt: String(localized: "Which canton is located here?"),
                image: "maps/VS",
                choices: [
                    Choice(text: String(localized: "Valais"), isCorrect: true),
                    Choice(text: String(localized: "Bern")),
                    Choice(text: String(localized: "Vaud")),
                    Choice(text: String(localized: "Ticino"))
                ]
            ),
            Question(
                prompt: String(localized: "Which canton is located here?"),
                image: "maps/VD",
                choices: [
                    Choice(text: String(localized: "Vaud"), isCorrect: true),
                    Choice(text: String(localized: "Fribourg")),
                    Choice(text: String(localized: "Bern")),
                    Choice(text: String(localized: "Geneva"))
                ]
            ),
            Question(
                prompt: String(localized: "Which canton is located here?"),
                image: "maps/ZG",
                choices: [
                    Choice(text: String(localized: "Zug"), isCorrect: true),
                    Choice(text: String(localized: "Schwyz")),
                    Choice(text: String(localized: "Lucerne")),
                    Choice(text: String(localized: "Nidwalden"))
                ]
            ),
            Question(
                prompt: String(localized: "Which canton is located here?"),
                image: "maps/ZH",
                choices: [
                    Choice(text: String(localized: "Zürich"), isCorrect: true),
                    Choice(text: String(localized: "St. Gallen")),
                    Choice(text: String(localized: "Thurgau")),
                    Choice(text: String(localized: "Aargau"))
                ]
            )
        ]
    )
}
