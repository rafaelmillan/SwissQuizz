//
//  Capitals.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 14.12.2023.
//

import Foundation
import MapKit

extension Quiz {
    static let cities = Quiz(
        id: "cities",
        label: "City Guessr",
        description: "Spot Swiss cities from space",
        systemImage: "building.2.fill",
        questions: [
            Question(
                prompt: "Which city is this?",
                coordinates: Coordinates(latitude: 47.374444, longitude: 8.541111),
                choices: [
                    Choice(text: "Zürich", isCorrect: true),
                    Choice(text: "Geneva"),
                    Choice(text: "Luzerne"),
                    Choice(text: "Lausanne")
                ]
            ),
            Question(
                prompt: "Which city is this?",
                coordinates: Coordinates(latitude: 46.201667, longitude: 6.146944),
                choices: [
                    Choice(text: "Geneva", isCorrect: true),
                    Choice(text: "Zürich"),
                    Choice(text: "Luzerne"),
                    Choice(text: "Lugano")
                ]
            ),
            Question(
                prompt: "Which city is this?",
                coordinates: Coordinates(latitude: 47.554722, longitude: 7.590556),
                choices: [
                    Choice(text: "Basel", isCorrect: true),
                    Choice(text: "Biel/Bienne"),
                    Choice(text: "Winterthur"),
                    Choice(text: "St. Gallen")
                ]
            ),
            Question(
                prompt: "Which city is this?",
                coordinates: Coordinates(latitude: 46.519833, longitude: 6.6335),
                choices: [
                    Choice(text: "Lausanne", isCorrect: true),
                    Choice(text: "Bellinzona"),
                    Choice(text: "Zürich"),
                    Choice(text: "Thun")
                ]
            ),
            Question(
                prompt: "Which city is this?",
                coordinates: Coordinates(latitude: 46.948056, longitude: 7.4475),
                choices: [
                    Choice(text: "Bern", isCorrect: true),
                    Choice(text: "Basel"),
                    Choice(text: "St. Gallen"),
                    Choice(text: "Bellinzona")
                ]
            ),
            Question(
                prompt: "Which city is this?",
                coordinates: Coordinates(latitude: 47.498889, longitude: 8.728611),
                choices: [
                    Choice(text: "Winterthur", isCorrect: true),
                    Choice(text: "Basel"),
                    Choice(text: "St. Gallen"),
                    Choice(text: "Biel/Bienne")
                ]
            ),
            Question(
                prompt: "Which city is this?",
                coordinates: Coordinates(latitude: 47.05, longitude: 8.3),
                choices: [
                    Choice(text: "Lucerne", isCorrect: true),
                    Choice(text: "Thun"),
                    Choice(text: "Lugano"),
                    Choice(text: "Bellinzona")
                ]
            ),
            Question(
                prompt: "Which city is this?",
                coordinates: Coordinates(latitude: 47.424167, longitude: 9.370833),
                choices: [
                    Choice(text: "St. Gallen", isCorrect: true),
                    Choice(text: "Basel"),
                    Choice(text: "Bern"),
                    Choice(text: "Winterthur")
                ]
            ),
            Question(
                prompt: "Which city is this?",
                coordinates: Coordinates(latitude: 46.005, longitude: 8.9525),
                choices: [
                    Choice(text: "Lugano", isCorrect: true),
                    Choice(text: "Lucerne"),
                    Choice(text: "Lausanne"),
                    Choice(text: "Thun")
                ]
            ),
            Question(
                prompt: "Which city is this?",
                coordinates: Coordinates(latitude: 47.133333, longitude: 7.25),
                choices: [
                    Choice(text: "Biel/Bienne", isCorrect: true),
                    Choice(text: "Zürich"),
                    Choice(text: "Geneva"),
                    Choice(text: "Thun")
                ]
            ),
            Question(
                prompt: "Which city is this?",
                coordinates: Coordinates(latitude: 46.766667, longitude: 7.633333),
                choices: [
                    Choice(text: "Thun", isCorrect: true),
                    Choice(text: "Lugano"),
                    Choice(text: "Bellinzona"),
                    Choice(text: "Lucerne")
                ]
            ),
            Question(
                prompt: "Which city is this?",
                coordinates: Coordinates(latitude: 46.195371, longitude: 9.029676),
                choices: [
                    Choice(text: "Bellinzona", isCorrect: true),
                    Choice(text: "Lugano"),
                    Choice(text: "Lucerne"),
                    Choice(text: "Thun")
                ]
            )
        ]
    )
}
