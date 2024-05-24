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
        label: String(localized: "Food"),
        description: String(localized: "Find where food comes from"),
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
                ],
                credit: Credit(label: "CC BY-SA 4.0 Gruyere alpage", urlString: "https://w.wiki/9fjp")
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
                ],
                credit: Credit(label: "CC BY-SA 3.0 Mike Lehmann", urlString: "https://w.wiki/9fjn")
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
                ],
                credit: Credit(label: "CC BY-SA 4.0 Martin Thurnherr", urlString: "https://w.wiki/9fji")
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
                ],
                credit: Credit(label: "CC BY-SA 4.0 Hubertl", urlString: "https://w.wiki/9fjW")
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
                ],
                credit: Credit(label: "CC BY-SA 3.0 NEON ja", urlString: "https://w.wiki/9fjo")
            ),
            Question(
                prompt: String(localized: "Where can Sbrinz AOP come from?"),
                image: "foods/sbrinz",
                allowMultipleChoices: true,
                choices: [
                    Choice(text: String(localized: "Lucerne"), isCorrect: true),
                    Choice(text: String(localized: "Zug"), isCorrect: true),
                    Choice(text: String(localized: "Schwyz"), isCorrect: true),
                    Choice(text: String(localized: "Obwalden"), isCorrect: true),
                    Choice(text: String(localized: "Nidwalden"), isCorrect: true),
                    Choice(text: String(localized: "St. Gallen"), isCorrect: true)
                ],
                credit: Credit(label: "CC BY-SA 4.0 Ulled", urlString: "https://w.wiki/9fjk")
            )
        ]
    )
}
