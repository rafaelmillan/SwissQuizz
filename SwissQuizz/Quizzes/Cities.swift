//
//  Capitals.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 14.12.2023.
//

import Foundation
import MapKit

struct CitiesQuiz: Quiz {
    var slug: String { "cities" }
    var label: String { "Cities" }
    var systemImage: String { "building" }
    var questions: [Question] {
        [
            Question(
                prompt: "Which city is this?",
                coordinates: CLLocationCoordinate2D(latitude: 47.374444, longitude: 8.541111),
                span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05),
                answers: [
                    Answer(text: "Zürich", isCorrect: true),
                    Answer(text: "Geneva"),
                    Answer(text: "Luzerne"),
                    Answer(text: "Lausanne")
                ]
            ),
            Question(
                prompt: "Which city is this?",
                coordinates: CLLocationCoordinate2D(latitude: 46.201667, longitude: 6.146944),
                span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05),
                answers: [
                    Answer(text: "Geneva", isCorrect: true),
                    Answer(text: "Zürich"),
                    Answer(text: "Luzerne"),
                    Answer(text: "Lugano")
                ]
            ),
            Question(
                prompt: "Which city is this?",
                coordinates: CLLocationCoordinate2D(latitude: 47.554722, longitude: 7.590556),
                span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05),
                answers: [
                    Answer(text: "Basel", isCorrect: true),
                    Answer(text: "Biel/Bienne"),
                    Answer(text: "Winterthur"),
                    Answer(text: "St. Gallen")
                ]
            ),
            Question(
                prompt: "Which city is this?",
                coordinates: CLLocationCoordinate2D(latitude: 46.519833, longitude: 6.6335),
                span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05),
                answers: [
                    Answer(text: "Lausanne", isCorrect: true),
                    Answer(text: "Bellinzona"),
                    Answer(text: "Zürich"),
                    Answer(text: "Thun")
                ]
            ),
            Question(
                prompt: "Which city is this?",
                coordinates: CLLocationCoordinate2D(latitude: 46.948056, longitude: 7.4475),
                span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05),
                answers: [
                    Answer(text: "Bern", isCorrect: true),
                    Answer(text: "Basel"),
                    Answer(text: "St. Gallen"),
                    Answer(text: "Bellinzona")
                ]
            ),
            Question(
                prompt: "Which city is this?",
                coordinates: CLLocationCoordinate2D(latitude: 47.498889, longitude: 8.728611),
                span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05),
                answers: [
                    Answer(text: "Winterthur", isCorrect: true),
                    Answer(text: "Basel"),
                    Answer(text: "St. Gallen"),
                    Answer(text: "Biel/Bienne")
                ]
            ),
            Question(
                prompt: "Which city is this?",
                coordinates: CLLocationCoordinate2D(latitude: 47.05, longitude: 8.3),
                span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05),
                answers: [
                    Answer(text: "Lucerne", isCorrect: true),
                    Answer(text: "Thun"),
                    Answer(text: "Lugano"),
                    Answer(text: "Bellinzona")
                ]
            ),
            Question(
                prompt: "Which city is this?",
                coordinates: CLLocationCoordinate2D(latitude: 47.424167, longitude: 9.370833),
                span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05),
                answers: [
                    Answer(text: "St. Gallen", isCorrect: true),
                    Answer(text: "Basel"),
                    Answer(text: "Bern"),
                    Answer(text: "Winterthur")
                ]
            ),
            Question(
                prompt: "Which city is this?",
                coordinates: CLLocationCoordinate2D(latitude: 46.005, longitude: 8.9525),
                span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05),
                answers: [
                    Answer(text: "Lugano", isCorrect: true),
                    Answer(text: "Lucerne"),
                    Answer(text: "Lausanne"),
                    Answer(text: "Thun")
                ]
            ),
            Question(
                prompt: "Which city is this?",
                coordinates: CLLocationCoordinate2D(latitude: 47.133333, longitude: 7.25),
                span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05),
                answers: [
                    Answer(text: "Biel/Bienne", isCorrect: true),
                    Answer(text: "Zürich"),
                    Answer(text: "Geneva"),
                    Answer(text: "Thun")
                ]
            ),
            Question(
                prompt: "Which city is this?",
                coordinates: CLLocationCoordinate2D(latitude: 46.766667, longitude: 7.633333),
                span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05),
                answers: [
                    Answer(text: "Thun", isCorrect: true),
                    Answer(text: "Lugano"),
                    Answer(text: "Bellinzona"),
                    Answer(text: "Lucerne")
                ]
            ),
            Question(
                prompt: "Which city is this?",
                coordinates: CLLocationCoordinate2D(latitude: 46.195371, longitude: 9.029676),
                span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05),
                answers: [
                    Answer(text: "Bellinzona", isCorrect: true),
                    Answer(text: "Lugano"),
                    Answer(text: "Lucerne"),
                    Answer(text: "Thun")
                ]
            )
        ]
    }
}
