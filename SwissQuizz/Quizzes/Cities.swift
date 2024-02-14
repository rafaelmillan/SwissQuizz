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
                prompt: String(localized: "Which city is this?"),
                coordinates: Coordinates(latitude: 47.374444, longitude: 8.541111),
                choices: [
                    Choice(text: String(localized: "Zürich"), isCorrect: true),
                    Choice(text: String(localized: "Geneva")),
                    Choice(text: String(localized: "Luzerne")),
                    Choice(text: String(localized: "Lausanne"))
                ]
            ),
            Question(
                prompt: String(localized: "Which city is this?"),
                coordinates: Coordinates(latitude: 46.201667, longitude: 6.146944),
                choices: [
                    Choice(text: String(localized: "Geneva"), isCorrect: true),
                    Choice(text: String(localized: "Zürich")),
                    Choice(text: String(localized: "Luzerne")),
                    Choice(text: String(localized: "Lugano"))
                ]
            ),
            Question(
                prompt: String(localized: "Which city is this?"),
                coordinates: Coordinates(latitude: 47.554722, longitude: 7.590556),
                choices: [
                    Choice(text: String(localized: "Basel"), isCorrect: true),
                    Choice(text: String(localized: "Biel/Bienne")),
                    Choice(text: String(localized: "Winterthur")),
                    Choice(text: String(localized: "St. Gallen"))
                ]
            ),
            Question(
                prompt: String(localized: "Which city is this?"),
                coordinates: Coordinates(latitude: 46.519833, longitude: 6.6335),
                choices: [
                    Choice(text: String(localized: "Lausanne"), isCorrect: true),
                    Choice(text: String(localized: "Bellinzona")),
                    Choice(text: String(localized: "Zürich")),
                    Choice(text: String(localized: "Thun"))
                ]
            ),
            Question(
                prompt: String(localized: "Which city is this?"),
                coordinates: Coordinates(latitude: 46.948056, longitude: 7.4475),
                choices: [
                    Choice(text: String(localized: "Bern"), isCorrect: true),
                    Choice(text: String(localized: "Basel")),
                    Choice(text: String(localized: "St. Gallen")),
                    Choice(text: String(localized: "Bellinzona"))
                ]
            ),
            Question(
                prompt: String(localized: "Which city is this?"),
                coordinates: Coordinates(latitude: 47.498889, longitude: 8.728611),
                choices: [
                    Choice(text: String(localized: "Winterthur"), isCorrect: true),
                    Choice(text: String(localized: "Basel")),
                    Choice(text: String(localized: "St. Gallen")),
                    Choice(text: String(localized: "Biel/Bienne"))
                ]
            ),
            Question(
                prompt: String(localized: "Which city is this?"),
                coordinates: Coordinates(latitude: 47.05, longitude: 8.3),
                choices: [
                    Choice(text: String(localized: "Lucerne"), isCorrect: true),
                    Choice(text: String(localized: "Thun")),
                    Choice(text: String(localized: "Lugano")),
                    Choice(text: String(localized: "Bellinzona"))
                ]
            ),
            Question(
                prompt: String(localized: "Which city is this?"),
                coordinates: Coordinates(latitude: 47.424167, longitude: 9.370833),
                choices: [
                    Choice(text: String(localized: "St. Gallen"), isCorrect: true),
                    Choice(text: String(localized: "Basel")),
                    Choice(text: String(localized: "Bern")),
                    Choice(text: String(localized: "Winterthur"))
                ]
            ),
            Question(
                prompt: String(localized: "Which city is this?"),
                coordinates: Coordinates(latitude: 46.005, longitude: 8.9525),
                choices: [
                    Choice(text: String(localized: "Lugano"), isCorrect: true),
                    Choice(text: String(localized: "Lucerne")),
                    Choice(text: String(localized: "Lausanne")),
                    Choice(text: String(localized: "Thun"))
                ]
            ),
            Question(
                prompt: String(localized: "Which city is this?"),
                coordinates: Coordinates(latitude: 47.133333, longitude: 7.25),
                choices: [
                    Choice(text: String(localized: "Biel/Bienne"), isCorrect: true),
                    Choice(text: String(localized: "Zürich")),
                    Choice(text: String(localized: "Geneva")),
                    Choice(text: String(localized: "Thun"))
                ]
            ),
            Question(
                prompt: String(localized: "Which city is this?"),
                coordinates: Coordinates(latitude: 46.766667, longitude: 7.633333),
                choices: [
                    Choice(text: String(localized: "Thun"), isCorrect: true),
                    Choice(text: String(localized: "Lugano")),
                    Choice(text: String(localized: "Bellinzona")),
                    Choice(text: String(localized: "Lucerne"))
                ]
            ),
            Question(
                prompt: String(localized: "Which city is this?"),
                coordinates: Coordinates(latitude: 46.195371, longitude: 9.029676),
                choices: [
                    Choice(text: String(localized: "Bellinzona"), isCorrect: true),
                    Choice(text: String(localized: "Lugano")),
                    Choice(text: String(localized: "Lucerne")),
                    Choice(text: String(localized: "Thun"))
                ]
            )
        ]
    )
}
