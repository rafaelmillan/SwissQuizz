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
                prompt: String(localized: "Where can Gruyère AOP come from?"),
                image: "foods/gruyere",
                allowMultipleChoices: true,
                choices: [
                    Choice(text: String(localized: "Fribourg"), isCorrect: true),
                    Choice(text: String(localized: "Vaud"), isCorrect: true),
                    Choice(text: String(localized: "Neuchâtel"), isCorrect: true),
                    Choice(text: String(localized: "Jura"), isCorrect: true),
                    Choice(text: String(localized: "Bern"), isCorrect: true)
                ]
            ),
            Question(
                prompt: String(localized: "Where can Tête de Moine AOP come from?"),
                image: "foods/teteDeMoine",
                allowMultipleChoices: true,
                choices: [
                    Choice(text: String(localized: "Fribourg")),
                    Choice(text: String(localized: "Vaud")),
                    Choice(text: String(localized: "Neuchâtel")),
                    Choice(text: String(localized: "Jura"), isCorrect: true),
                    Choice(text: String(localized: "Bern"), isCorrect: true)
                ]
            ),
            Question(
                prompt: String(localized: "Where can Botzi pears AOP come from?"),
                image: "foods/poireABotzi",
                allowMultipleChoices: true,
                choices: [
                    Choice(text: String(localized: "Fribourg"), isCorrect: true),
                    Choice(text: String(localized: "Vaud"), isCorrect: true),
                    Choice(text: String(localized: "Neuchâtel")),
                    Choice(text: String(localized: "Jura")),
                    Choice(text: String(localized: "Bern"), isCorrect: true)
                ]
            ),
            Question(
                prompt: String(localized: "Where can L'Étivaz AOP come from?"),
                image: "foods/lEtivaz",
                allowMultipleChoices: true,
                choices: [
                    Choice(text: String(localized: "Fribourg")),
                    Choice(text: String(localized: "Vaud"), isCorrect: true),
                    Choice(text: String(localized: "Neuchâtel")),
                    Choice(text: String(localized: "Jura")),
                    Choice(text: String(localized: "Bern"))
                ]
            ),
            Question(
                prompt: String(localized: "Where can Vacherin Mont-d’Or AOP come from?"),
                image: "foods/vacherinMontDOr",
                allowMultipleChoices: true,
                choices: [
                    Choice(text: String(localized: "Fribourg")),
                    Choice(text: String(localized: "Vaud"), isCorrect: true),
                    Choice(text: String(localized: "Neuchâtel")),
                    Choice(text: String(localized: "Jura")),
                    Choice(text: String(localized: "Geneva"))
                ]
            ),
            Question(
                prompt: String(localized: "Where can Sbrinz AOP come from?"),
                image: "foods/sbrinz",
                allowMultipleChoices: true,
                choices: [
                    Choice(text: String(localized: "Luzern"), isCorrect: true),
                    Choice(text: String(localized: "Zug"), isCorrect: true),
                    Choice(text: String(localized: "Schwyz"), isCorrect: true),
                    Choice(text: String(localized: "Obwald"), isCorrect: true),
                    Choice(text: String(localized: "Nidwald"), isCorrect: true)
                ]
            )
        ]
    )
}
