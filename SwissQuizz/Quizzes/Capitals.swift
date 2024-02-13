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
        label: "Capitals",
        description: "Find the capital of each canton",
        systemImage: "building.columns.fill",
        questions: [
            Question(
                prompt: "What is the capital of Aargau?",
                choices: [
                    Choice(text: "Aarau", isCorrect: true),
                    Choice(text: "Aargau"),
                    Choice(text: "Wettingen"),
                    Choice(text: "Baden")
                ]
            ),
            Question(
                prompt: "What is the capital of Appenzell Innerrhoden?",
                choices: [
                    Choice(text: "Appenzell", isCorrect: true),
                    Choice(text: "Gonten"),
                    Choice(text: "Oberegg"),
                    Choice(text: "Herisau")
                ]
            ),
            Question(
                prompt: "What is the capital of Appenzell Ausserrhoden?",
                choices: [
                    Choice(text: "Herisau", isCorrect: true),
                    Choice(text: "Teufen"),
                    Choice(text: "Speicher"),
                    Choice(text: "Appenzell")
                ]
            ),
            Question(
                prompt: "What is the capital of Bern?",
                choices: [
                    Choice(text: "Bern", isCorrect: true),
                    Choice(text: "Biel/Bienne"),
                    Choice(text: "Thun"),
                    Choice(text: "Köniz")
                ]
            ),
            Question(
                prompt: "What is the capital of Basel-Landschaft?",
                choices: [
                    Choice(text: "Liestal", isCorrect: true),
                    Choice(text: "Basel"),
                    Choice(text: "Allschwil"),
                    Choice(text: "Reinach")
                ]
            ),
            Question(
                prompt: "What is the capital of Basel-Stadt?",
                choices: [
                    Choice(text: "Basel", isCorrect: true),
                    Choice(text: "Bettingen"),
                    Choice(text: "Riehen"),
                    Choice(text: "Liestal")
                ]
            ),
            Question(
                prompt: "What is the capital of Fribourg?",
                choices: [
                    Choice(text: "Fribourg", isCorrect: true),
                    Choice(text: "Bulle"),
                    Choice(text: "Villars-sur-Glâne"),
                    Choice(text: "Murten")
                ]
            ),
            Question(
                prompt: "What is the capital of Geneva?",
                choices: [
                    Choice(text: "Geneva", isCorrect: true),
                    Choice(text: "Vernier"),
                    Choice(text: "Lancy"),
                    Choice(text: "Meyrin")
                ]
            ),
            Question(
                prompt: "What is the capital of Glarus?",
                choices: [
                    Choice(text: "Glarus", isCorrect: true),
                    Choice(text: "Netstal"),
                    Choice(text: "Ennenda"),
                    Choice(text: "Riedern")
                ]
            ),
            Question(
                prompt: "What is the capital of the Grisons?",
                choices: [
                    Choice(text: "Chur", isCorrect: true),
                    Choice(text: "Grisons"),
                    Choice(text: "St. Moritz"),
                    Choice(text: "Davos")
                ]
            ),
            Question(
                prompt: "What is the capital of Jura?",
                choices: [
                    Choice(text: "Delémont", isCorrect: true),
                    Choice(text: "Porrentruy"),
                    Choice(text: "Saint-Ursanne"),
                    Choice(text: "Jura")
                ]
            ),
            Question(
                prompt: "What is the capital of Lucerne?",
                choices: [
                    Choice(text: "Lucerne", isCorrect: true),
                    Choice(text: "Emmen"),
                    Choice(text: "Kriens"),
                    Choice(text: "Horw")
                ]
            ),
            Question(
                prompt: "What is the capital of Neuchâtel?",
                choices: [
                    Choice(text: "Neuchâtel", isCorrect: true),
                    Choice(text: "La Chaux-de-Fonds"),
                    Choice(text: "Val-de-Travers"),
                    Choice(text: "Le Locle")
                ]
            ),
            Question(
                prompt: "What is the capital of Nidwalden?",
                choices: [
                    Choice(text: "Stans", isCorrect: true),
                    Choice(text: "Nidwalden"),
                    Choice(text: "Stansstad"),
                    Choice(text: "Sarnen")
                ]
            ),
            Question(
                prompt: "What is the capital of Obwalden?",
                choices: [
                    Choice(text: "Sarnen", isCorrect: true),
                    Choice(text: "Obwalden"),
                    Choice(text: "Stans"),
                    Choice(text: "Alpnach")
                ]
            ),
            Question(
                prompt: "What is the capital of St. Gallen?",
                choices: [
                    Choice(text: "St. Gallen", isCorrect: true),
                    Choice(text: "Rapperswil-Jona"),
                    Choice(text: "Wil"),
                    Choice(text: "Gossau")
                ]
            ),
            Question(
                prompt: "What is the capital of Schaffhausen?",
                choices: [
                    Choice(text: "Schaffhausen", isCorrect: true),
                    Choice(text: "Rapperswil-Jona"),
                    Choice(text: "Neuhausen am Rheinfall"),
                    Choice(text: "Stein am Rhein")
                ]
            ),
            Question(
                prompt: "What is the capital of Solothurn?",
                choices: [
                    Choice(text: "Solothurn", isCorrect: true),
                    Choice(text: "Olten"),
                    Choice(text: "Grenchen"),
                    Choice(text: "Zuchwil")
                ]
            ),
            Question(
                prompt: "What is the capital of Schwyz?",
                choices: [
                    Choice(text: "Schwyz", isCorrect: true),
                    Choice(text: "Arth"),
                    Choice(text: "Lachen"),
                    Choice(text: "Freienbach")
                ]
            ),
            Question(
                prompt: "What is the capital of Thurgau?",
                choices: [
                    Choice(text: "Frauenfeld", isCorrect: true),
                    Choice(text: "Thurgau"),
                    Choice(text: "Kreuzlingen"),
                    Choice(text: "Arbon")
                ]
            ),
            Question(
                prompt: "What is the capital of Ticino?",
                choices: [
                    Choice(text: "Bellinzona", isCorrect: true),
                    Choice(text: "Lugano"),
                    Choice(text: "Locarno"),
                    Choice(text: "Ticino")
                ]
            ),
            Question(
                prompt: "What is the capital of Uri?",
                choices: [
                    Choice(text: "Altdorf", isCorrect: true),
                    Choice(text: "Uri"),
                    Choice(text: "Schattdorf"),
                    Choice(text: "Bürglen")
                ]
            ),
            Question(
                prompt: "What is the capital of Vaud?",
                choices: [
                    Choice(text: "Lausanne", isCorrect: true),
                    Choice(text: "Vaud"),
                    Choice(text: "Yverdon-les-Bains"),
                    Choice(text: "Montreux")
                ]
            ),
            Question(
                prompt: "What is the capital of Valais?",
                choices: [
                    Choice(text: "Sion", isCorrect: true),
                    Choice(text: "Valais"),
                    Choice(text: "Martigny"),
                    Choice(text: "Sierre")
                ]
            ),
            Question(
                prompt: "What is the capital of Zug?",
                choices: [
                    Choice(text: "Zug", isCorrect: true),
                    Choice(text: "Baar"),
                    Choice(text: "Cham"),
                    Choice(text: "Risch")
                ]
            ),
            Question(
                prompt: "What is the capital of Zürich?",
                choices: [
                    Choice(text: "Zürich", isCorrect: true),
                    Choice(text: "Winterthur"),
                    Choice(text: "Uster"),
                    Choice(text: "Dübendorf")
                ]
            )
        ]
    )
}
