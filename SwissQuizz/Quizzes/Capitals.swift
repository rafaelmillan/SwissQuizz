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
                answers: [
                    Answer(text: "Aarau", isCorrect: true),
                    Answer(text: "Aargau"),
                    Answer(text: "Wettingen"),
                    Answer(text: "Baden")
                ]
            ),
            Question(
                prompt: "What is the capital of Appenzell Innerrhoden?",
                answers: [
                    Answer(text: "Appenzell", isCorrect: true),
                    Answer(text: "Gonten"),
                    Answer(text: "Oberegg"),
                    Answer(text: "Herisau")
                ]
            ),
            Question(
                prompt: "What is the capital of Appenzell Ausserrhoden?",
                answers: [
                    Answer(text: "Herisau", isCorrect: true),
                    Answer(text: "Teufen"),
                    Answer(text: "Speicher"),
                    Answer(text: "Appenzell")
                ]
            ),
            Question(
                prompt: "What is the capital of Bern?",
                answers: [
                    Answer(text: "Bern", isCorrect: true),
                    Answer(text: "Biel/Bienne"),
                    Answer(text: "Thun"),
                    Answer(text: "Köniz")
                ]
            ),
            Question(
                prompt: "What is the capital of Basel-Landschaft?",
                answers: [
                    Answer(text: "Liestal", isCorrect: true),
                    Answer(text: "Basel"),
                    Answer(text: "Allschwil"),
                    Answer(text: "Reinach")
                ]
            ),
            Question(
                prompt: "What is the capital of Basel-Stadt?",
                answers: [
                    Answer(text: "Basel", isCorrect: true),
                    Answer(text: "Bettingen"),
                    Answer(text: "Riehen"),
                    Answer(text: "Liestal")
                ]
            ),
            Question(
                prompt: "What is the capital of Fribourg?",
                answers: [
                    Answer(text: "Fribourg", isCorrect: true),
                    Answer(text: "Bulle"),
                    Answer(text: "Villars-sur-Glâne"),
                    Answer(text: "Murten")
                ]
            ),
            Question(
                prompt: "What is the capital of Geneva?",
                answers: [
                    Answer(text: "Geneva", isCorrect: true),
                    Answer(text: "Vernier"),
                    Answer(text: "Lancy"),
                    Answer(text: "Meyrin")
                ]
            ),
            Question(
                prompt: "What is the capital of Glarus?",
                answers: [
                    Answer(text: "Glarus", isCorrect: true),
                    Answer(text: "Netstal"),
                    Answer(text: "Ennenda"),
                    Answer(text: "Riedern")
                ]
            ),
            Question(
                prompt: "What is the capital of the Grisons?",
                answers: [
                    Answer(text: "Chur", isCorrect: true),
                    Answer(text: "Grisons"),
                    Answer(text: "St. Moritz"),
                    Answer(text: "Davos")
                ]
            ),
            Question(
                prompt: "What is the capital of Jura?",
                answers: [
                    Answer(text: "Delémont", isCorrect: true),
                    Answer(text: "Porrentruy"),
                    Answer(text: "Saint-Ursanne"),
                    Answer(text: "Jura")
                ]
            ),
            Question(
                prompt: "What is the capital of Lucerne?",
                answers: [
                    Answer(text: "Lucerne", isCorrect: true),
                    Answer(text: "Emmen"),
                    Answer(text: "Kriens"),
                    Answer(text: "Horw")
                ]
            ),
            Question(
                prompt: "What is the capital of Neuchâtel?",
                answers: [
                    Answer(text: "Neuchâtel", isCorrect: true),
                    Answer(text: "La Chaux-de-Fonds"),
                    Answer(text: "Val-de-Travers"),
                    Answer(text: "Le Locle")
                ]
            ),
            Question(
                prompt: "What is the capital of Nidwalden?",
                answers: [
                    Answer(text: "Stans", isCorrect: true),
                    Answer(text: "Nidwalden"),
                    Answer(text: "Stansstad"),
                    Answer(text: "Sarnen")
                ]
            ),
            Question(
                prompt: "What is the capital of Obwalden?",
                answers: [
                    Answer(text: "Sarnen", isCorrect: true),
                    Answer(text: "Obwalden"),
                    Answer(text: "Stans"),
                    Answer(text: "Alpnach")
                ]
            ),
            Question(
                prompt: "What is the capital of St. Gallen?",
                answers: [
                    Answer(text: "St. Gallen", isCorrect: true),
                    Answer(text: "Rapperswil-Jona"),
                    Answer(text: "Wil"),
                    Answer(text: "Gossau")
                ]
            ),
            Question(
                prompt: "What is the capital of Schaffhausen?",
                answers: [
                    Answer(text: "Schaffhausen", isCorrect: true),
                    Answer(text: "Rapperswil-Jona"),
                    Answer(text: "Neuhausen am Rheinfall"),
                    Answer(text: "Stein am Rhein")
                ]
            ),
            Question(
                prompt: "What is the capital of Solothurn?",
                answers: [
                    Answer(text: "Solothurn", isCorrect: true),
                    Answer(text: "Olten"),
                    Answer(text: "Grenchen"),
                    Answer(text: "Zuchwil")
                ]
            ),
            Question(
                prompt: "What is the capital of Schwyz?",
                answers: [
                    Answer(text: "Schwyz", isCorrect: true),
                    Answer(text: "Arth"),
                    Answer(text: "Lachen"),
                    Answer(text: "Freienbach")
                ]
            ),
            Question(
                prompt: "What is the capital of Thurgau?",
                answers: [
                    Answer(text: "Frauenfeld", isCorrect: true),
                    Answer(text: "Thurgau"),
                    Answer(text: "Kreuzlingen"),
                    Answer(text: "Arbon")
                ]
            ),
            Question(
                prompt: "What is the capital of Ticino?",
                answers: [
                    Answer(text: "Bellinzona", isCorrect: true),
                    Answer(text: "Lugano"),
                    Answer(text: "Locarno"),
                    Answer(text: "Ticino")
                ]
            ),
            Question(
                prompt: "What is the capital of Uri?",
                answers: [
                    Answer(text: "Altdorf", isCorrect: true),
                    Answer(text: "Uri"),
                    Answer(text: "Schattdorf"),
                    Answer(text: "Bürglen")
                ]
            ),
            Question(
                prompt: "What is the capital of Vaud?",
                answers: [
                    Answer(text: "Lausanne", isCorrect: true),
                    Answer(text: "Vaud"),
                    Answer(text: "Yverdon-les-Bains"),
                    Answer(text: "Montreux")
                ]
            ),
            Question(
                prompt: "What is the capital of Valais?",
                answers: [
                    Answer(text: "Sion", isCorrect: true),
                    Answer(text: "Valais"),
                    Answer(text: "Martigny"),
                    Answer(text: "Sierre")
                ]
            ),
            Question(
                prompt: "What is the capital of Zug?",
                answers: [
                    Answer(text: "Zug", isCorrect: true),
                    Answer(text: "Baar"),
                    Answer(text: "Cham"),
                    Answer(text: "Risch")
                ]
            ),
            Question(
                prompt: "What is the capital of Zürich?",
                answers: [
                    Answer(text: "Zürich", isCorrect: true),
                    Answer(text: "Winterthur"),
                    Answer(text: "Uster"),
                    Answer(text: "Dübendorf")
                ]
            )
        ]
    )
}
