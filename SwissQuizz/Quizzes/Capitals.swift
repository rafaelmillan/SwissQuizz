//
//  Capitals.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 14.12.2023.
//

import Foundation

extension Quiz {
    static let capitals = Quiz(
        id: "capitals",
        label: String(localized: "Capitals"),
        description: String(localized: "Find the capital of each canton"),
        systemImage: "building.columns.fill",
        questions: [
            Question(
                prompt: String(localized: "What is the capital of Aargau?"),
                choices: [
                    Choice(text: String(localized: "Aarau"), isCorrect: true),
                    Choice(text: String(localized: "Aargau")),
                    Choice(text: String(localized: "Wettingen")),
                    Choice(text: String(localized: "Baden"))
                ]
            ),
            Question(
                prompt: String(localized: "What is the capital of Appenzell Innerrhoden?"),
                choices: [
                    Choice(text: String(localized: "Appenzell"), isCorrect: true),
                    Choice(text: String(localized: "Gonten")),
                    Choice(text: String(localized: "Oberegg")),
                    Choice(text: String(localized: "Herisau"))
                ]
            ),
            Question(
                prompt: String(localized: "What is the capital of Appenzell Ausserrhoden?"),
                choices: [
                    Choice(text: String(localized: "Herisau"), isCorrect: true),
                    Choice(text: String(localized: "Teufen")),
                    Choice(text: String(localized: "Speicher")),
                    Choice(text: String(localized: "Appenzell"))
                ]
            ),
            Question(
                prompt: String(localized: "What is the capital of Bern?"),
                choices: [
                    Choice(text: String(localized: "Bern"), isCorrect: true),
                    Choice(text: String(localized: "Biel/Bienne")),
                    Choice(text: String(localized: "Thun")),
                    Choice(text: String(localized: "Köniz"))
                ]
            ),
            Question(
                prompt: String(localized: "What is the capital of Basel-Landschaft?"),
                choices: [
                    Choice(text: String(localized: "Liestal"), isCorrect: true),
                    Choice(text: String(localized: "Basel")),
                    Choice(text: String(localized: "Allschwil")),
                    Choice(text: String(localized: "Reinach"))
                ]
            ),
            Question(
                prompt: String(localized: "What is the capital of Basel-Stadt?"),
                choices: [
                    Choice(text: String(localized: "Basel"), isCorrect: true),
                    Choice(text: String(localized: "Bettingen")),
                    Choice(text: String(localized: "Riehen")),
                    Choice(text: String(localized: "Liestal"))
                ]
            ),
            Question(
                prompt: String(localized: "What is the capital of Fribourg?"),
                choices: [
                    Choice(text: String(localized: "Fribourg"), isCorrect: true),
                    Choice(text: String(localized: "Bulle")),
                    Choice(text: String(localized: "Villars-sur-Glâne")),
                    Choice(text: String(localized: "Murten"))
                ]
            ),
            Question(
                prompt: String(localized: "What is the capital of Geneva?"),
                choices: [
                    Choice(text: String(localized: "Geneva"), isCorrect: true),
                    Choice(text: String(localized: "Vernier")),
                    Choice(text: String(localized: "Lancy")),
                    Choice(text: String(localized: "Meyrin"))
                ]
            ),
            Question(
                prompt: String(localized: "What is the capital of Glarus?"),
                choices: [
                    Choice(text: String(localized: "Glarus"), isCorrect: true),
                    Choice(text: String(localized: "Netstal")),
                    Choice(text: String(localized: "Ennenda")),
                    Choice(text: String(localized: "Riedern"))
                ]
            ),
            Question(
                prompt: String(localized: "What is the capital of the Grisons?"),
                choices: [
                    Choice(text: String(localized: "Chur"), isCorrect: true),
                    Choice(text: String(localized: "Grisons")),
                    Choice(text: String(localized: "St. Moritz")),
                    Choice(text: String(localized: "Davos"))
                ]
            ),
            Question(
                prompt: String(localized: "What is the capital of Jura?"),
                choices: [
                    Choice(text: String(localized: "Delémont"), isCorrect: true),
                    Choice(text: String(localized: "Porrentruy")),
                    Choice(text: String(localized: "Saint-Ursanne")),
                    Choice(text: String(localized: "Jura"))
                ]
            ),
            Question(
                prompt: String(localized: "What is the capital of Lucerne?"),
                choices: [
                    Choice(text: String(localized: "Lucerne"), isCorrect: true),
                    Choice(text: String(localized: "Emmen")),
                    Choice(text: String(localized: "Kriens")),
                    Choice(text: String(localized: "Horw"))
                ]
            ),
            Question(
                prompt: String(localized: "What is the capital of Neuchâtel?"),
                choices: [
                    Choice(text: String(localized: "Neuchâtel"), isCorrect: true),
                    Choice(text: String(localized: "La Chaux-de-Fonds")),
                    Choice(text: String(localized: "Val-de-Travers")),
                    Choice(text: String(localized: "Le Locle"))
                ]
            ),
            Question(
                prompt: String(localized: "What is the capital of Nidwalden?"),
                choices: [
                    Choice(text: String(localized: "Stans"), isCorrect: true),
                    Choice(text: String(localized: "Nidwalden")),
                    Choice(text: String(localized: "Stansstad")),
                    Choice(text: String(localized: "Sarnen"))
                ]
            ),
            Question(
                prompt: String(localized: "What is the capital of Obwalden?"),
                choices: [
                    Choice(text: String(localized: "Sarnen"), isCorrect: true),
                    Choice(text: String(localized: "Obwalden")),
                    Choice(text: String(localized: "Stans")),
                    Choice(text: String(localized: "Alpnach"))
                ]
            ),
            Question(
                prompt: String(localized: "What is the capital of St. Gallen?"),
                choices: [
                    Choice(text: String(localized: "St. Gallen"), isCorrect: true),
                    Choice(text: String(localized: "Rapperswil-Jona")),
                    Choice(text: String(localized: "Wil")),
                    Choice(text: String(localized: "Gossau"))
                ]
            ),
            Question(
                prompt: String(localized: "What is the capital of Schaffhausen?"),
                choices: [
                    Choice(text: String(localized: "Schaffhausen"), isCorrect: true),
                    Choice(text: String(localized: "Rapperswil-Jona")),
                    Choice(text: String(localized: "Neuhausen am Rheinfall")),
                    Choice(text: String(localized: "Stein am Rhein"))
                ]
            ),
            Question(
                prompt: String(localized: "What is the capital of Solothurn?"),
                choices: [
                    Choice(text: String(localized: "Solothurn"), isCorrect: true),
                    Choice(text: String(localized: "Olten")),
                    Choice(text: String(localized: "Grenchen")),
                    Choice(text: String(localized: "Zuchwil"))
                ]
            ),
            Question(
                prompt: String(localized: "What is the capital of Schwyz?"),
                choices: [
                    Choice(text: String(localized: "Schwyz"), isCorrect: true),
                    Choice(text: String(localized: "Arth")),
                    Choice(text: String(localized: "Lachen")),
                    Choice(text: String(localized: "Freienbach"))
                ]
            ),
            Question(
                prompt: String(localized: "What is the capital of Thurgau?"),
                choices: [
                    Choice(text: String(localized: "Frauenfeld"), isCorrect: true),
                    Choice(text: String(localized: "Thurgau")),
                    Choice(text: String(localized: "Kreuzlingen")),
                    Choice(text: String(localized: "Arbon"))
                ]
            ),
            Question(
                prompt: String(localized: "What is the capital of Ticino?"),
                choices: [
                    Choice(text: String(localized: "Bellinzona"), isCorrect: true),
                    Choice(text: String(localized: "Lugano")),
                    Choice(text: String(localized: "Locarno")),
                    Choice(text: String(localized: "Ticino"))
                ]
            ),
            Question(
                prompt: String(localized: "What is the capital of Uri?"),
                choices: [
                    Choice(text: String(localized: "Altdorf"), isCorrect: true),
                    Choice(text: String(localized: "Uri")),
                    Choice(text: String(localized: "Schattdorf")),
                    Choice(text: String(localized: "Bürglen"))
                ]
            ),
            Question(
                prompt: String(localized: "What is the capital of Vaud?"),
                choices: [
                    Choice(text: String(localized: "Lausanne"), isCorrect: true),
                    Choice(text: String(localized: "Vaud")),
                    Choice(text: String(localized: "Yverdon-les-Bains")),
                    Choice(text: String(localized: "Montreux"))
                ]
            ),
            Question(
                prompt: String(localized: "What is the capital of Valais?"),
                choices: [
                    Choice(text: String(localized: "Sion"), isCorrect: true),
                    Choice(text: String(localized: "Valais")),
                    Choice(text: String(localized: "Martigny")),
                    Choice(text: String(localized: "Sierre"))
                ]
            ),
            Question(
                prompt: String(localized: "What is the capital of Zug?"),
                choices: [
                    Choice(text: String(localized: "Zug"), isCorrect: true),
                    Choice(text: String(localized: "Baar")),
                    Choice(text: String(localized: "Cham")),
                    Choice(text: String(localized: "Risch"))
                ]
            ),
            Question(
                prompt: String(localized: "What is the capital of Zürich?"),
                choices: [
                    Choice(text: String(localized: "Zürich"), isCorrect: true),
                    Choice(text: String(localized: "Winterthur")),
                    Choice(text: String(localized: "Uster")),
                    Choice(text: String(localized: "Dübendorf"))
                ]
            )
        ]
    )
}
