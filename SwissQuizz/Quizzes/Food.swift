//
//  Capitals.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 14.12.2023.
//

import Foundation

extension Quiz {
    static let food = Quiz(
        id: "food",
        label: "Food",
        description: "Find where AOP foods come from",
        systemImage: "fork.knife",
        questions: [
            Question(
                prompt: "Where can Gruyère AOP come from?",
                image: "foods/gruyere",
                allowMultipleAnswers: true,
                answers: [
                    Answer(text: "Fribourg", isCorrect: true),
                    Answer(text: "Vaud", isCorrect: true),
                    Answer(text: "Neuchâtel", isCorrect: true),
                    Answer(text: "Jura", isCorrect: true),
                    Answer(text: "Bern", isCorrect: true)
                ]
            ),
            Question(
                prompt: "Where can Tête de Moine AOP come from?",
                image: "foods/teteDeMoine",
                allowMultipleAnswers: true,
                answers: [
                    Answer(text: "Fribourg"),
                    Answer(text: "Vaud"),
                    Answer(text: "Neuchâtel"),
                    Answer(text: "Jura", isCorrect: true),
                    Answer(text: "Bern", isCorrect: true)
                ]
            ),
            Question(
                prompt: "Where can Botzi pears AOP come from?",
                image: "foods/poireABotzi",
                allowMultipleAnswers: true,
                answers: [
                    Answer(text: "Fribourg", isCorrect: true),
                    Answer(text: "Vaud", isCorrect: true),
                    Answer(text: "Neuchâtel"),
                    Answer(text: "Jura"),
                    Answer(text: "Bern", isCorrect: true)
                ]
            ),
            Question(
                prompt: "Where can L'Étivaz AOP come from?",
                image: "foods/lEtivaz",
                allowMultipleAnswers: true,
                answers: [
                    Answer(text: "Fribourg"),
                    Answer(text: "Vaud", isCorrect: true),
                    Answer(text: "Neuchâtel"),
                    Answer(text: "Jura"),
                    Answer(text: "Bern")
                ]
            ),
            Question(
                prompt: "Where can Vacherin Mont-d’Or AOP come from?",
                image: "foods/vacherinMontDOr",
                allowMultipleAnswers: true,
                answers: [
                    Answer(text: "Fribourg"),
                    Answer(text: "Vaud", isCorrect: true),
                    Answer(text: "Neuchâtel"),
                    Answer(text: "Jura"),
                    Answer(text: "Geneva")
                ]
            ),
            Question(
                prompt: "Where can Sbrinz AOP come from?",
                image: "foods/sbrinz",
                allowMultipleAnswers: true,
                answers: [
                    Answer(text: "Luzern", isCorrect: true),
                    Answer(text: "Zug", isCorrect: true),
                    Answer(text: "Schwyz", isCorrect: true),
                    Answer(text: "Obwald", isCorrect: true),
                    Answer(text: "Nidwald", isCorrect: true)
                ]
            )
        ]
    )
}
