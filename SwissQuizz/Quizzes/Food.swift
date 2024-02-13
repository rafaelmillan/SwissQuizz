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
                allowMultipleChoices: true,
                choices: [
                    Choice(text: "Fribourg", isCorrect: true),
                    Choice(text: "Vaud", isCorrect: true),
                    Choice(text: "Neuchâtel", isCorrect: true),
                    Choice(text: "Jura", isCorrect: true),
                    Choice(text: "Bern", isCorrect: true)
                ]
            ),
            Question(
                prompt: "Where can Tête de Moine AOP come from?",
                image: "foods/teteDeMoine",
                allowMultipleChoices: true,
                choices: [
                    Choice(text: "Fribourg"),
                    Choice(text: "Vaud"),
                    Choice(text: "Neuchâtel"),
                    Choice(text: "Jura", isCorrect: true),
                    Choice(text: "Bern", isCorrect: true)
                ]
            ),
            Question(
                prompt: "Where can Botzi pears AOP come from?",
                image: "foods/poireABotzi",
                allowMultipleChoices: true,
                choices: [
                    Choice(text: "Fribourg", isCorrect: true),
                    Choice(text: "Vaud", isCorrect: true),
                    Choice(text: "Neuchâtel"),
                    Choice(text: "Jura"),
                    Choice(text: "Bern", isCorrect: true)
                ]
            ),
            Question(
                prompt: "Where can L'Étivaz AOP come from?",
                image: "foods/lEtivaz",
                allowMultipleChoices: true,
                choices: [
                    Choice(text: "Fribourg"),
                    Choice(text: "Vaud", isCorrect: true),
                    Choice(text: "Neuchâtel"),
                    Choice(text: "Jura"),
                    Choice(text: "Bern")
                ]
            ),
            Question(
                prompt: "Where can Vacherin Mont-d’Or AOP come from?",
                image: "foods/vacherinMontDOr",
                allowMultipleChoices: true,
                choices: [
                    Choice(text: "Fribourg"),
                    Choice(text: "Vaud", isCorrect: true),
                    Choice(text: "Neuchâtel"),
                    Choice(text: "Jura"),
                    Choice(text: "Geneva")
                ]
            ),
            Question(
                prompt: "Where can Sbrinz AOP come from?",
                image: "foods/sbrinz",
                allowMultipleChoices: true,
                choices: [
                    Choice(text: "Luzern", isCorrect: true),
                    Choice(text: "Zug", isCorrect: true),
                    Choice(text: "Schwyz", isCorrect: true),
                    Choice(text: "Obwald", isCorrect: true),
                    Choice(text: "Nidwald", isCorrect: true)
                ]
            )
        ]
    )
}
