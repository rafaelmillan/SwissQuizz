//
//  Capitals.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 14.12.2023.
//

import Foundation

extension Quiz {
    static let records = Quiz(
        id: "records",
        label: String(localized: "Records"),
        description: String(localized: "Spot local and world records"),
        systemImage: "medal.fill",
        questions: [
            Question(
                prompt: String(localized: "What is the highest mountain in Switzerland? (4634 m)"),
                image: "records/mountain",
                choices: [
                    Choice(text: String(localized: "Dufourspitze"), isCorrect: true),
                    Choice(text: String(localized: "Nordend")),
                    Choice(text: String(localized: "Jungfrau")),
                    Choice(text: String(localized: "Matterhorn"))
                ],
                credit: Credit(label: "Warburg, CC BY-SA 3.0", urlString: "https://w.wiki/AAZC")
            ),
            Question(
                prompt: String(localized: "What is the highest village in Switzerland? (2126 m)"),
                image: "records/juf",
                choices: [
                    Choice(text: String(localized: "Juf (GR)"), isCorrect: true),
                    Choice(text: String(localized: "Chandolin (VS)")),
                    Choice(text: String(localized: "Arolla (VS)")),
                    Choice(text: String(localized: "Arosa (GR)"))
                ],
                credit: Credit(label: "Roland Zumbühl, CC BY-SA 3.0", urlString: "https://w.wiki/AAZF")
            ),
            Question(
                prompt: String(localized: "What is the largest lake fully within Swiss territory? (215 km2)"),
                image: "records/lake",
                choices: [
                    Choice(text: String(localized: "Lake Geneva")),
                    Choice(text: String(localized: "Lake Constance")),
                    Choice(text: String(localized: "Lake Neuchâtel"), isCorrect: true),
                    Choice(text: String(localized: "Lake Maggiore"))
                ],
                credit: Credit(label: "Dominique Dubied, CC BY-SA 4.0", urlString: "https://w.wiki/AAZV")
            ),
            Question(
                prompt: String(localized: "What is the longest river in Switzerland? (375 km)"),
                image: "records/river",
                choices: [
                    Choice(text: String(localized: "Rhine"), isCorrect: true),
                    Choice(text: String(localized: "Aare")),
                    Choice(text: String(localized: "Rhône")),
                    Choice(text: String(localized: "Reuss"))
                ],
                credit: Credit(label: "Dominicus Johannes Bergsma, CC BY-SA 4.0", urlString: "https://w.wiki/AAZY")
            ),
            Question(
                prompt: String(localized: "Which of these world records are held by Switzerland?"),
                image: "records/records",
                allowMultipleChoices: true,
                choices: [
                    Choice(text: String(localized: "Highest chocolate consumption per capita (11 kg, 2022)"), isCorrect: true),
                    Choice(text: String(localized: "Oldest bank in continuous operation (1472)")),
                    Choice(text: String(localized: "Longest railway tunnel (57 km)"), isCorrect: true),
                    Choice(text: String(localized: "Tallest gravity dam (285 m)"), isCorrect: true)
                ],
                credit: Credit(label: "Generation Grundeinkommen, CC BY 2.0", urlString: "https://w.wiki/AAZd")
            ),
            Question(
                prompt: String(localized: "Who is the longest serving federal councillor? (32 years)"),
                image: "records/council",
                choices: [
                    Choice(text: String(localized: "Carl Schenk"), isCorrect: true),
                    Choice(text: String(localized: "Adolf Deucher")),
                    Choice(text: String(localized: "Guiseppe Motta")),
                    Choice(text: String(localized: "Max Petitpierre")),
                    Choice(text: String(localized: "Jean-Pascal Delamuraz"))
                ],
                credit: Credit(label: "Library Am Guisanplatz, CC BY-SA 4.0", urlString: "https://w.wiki/AAZh")
            ),
            Question(
                prompt: String(localized: "What is the most recent Swiss canton to become a full member of the confederation? (1979)"),
                image: "records/jura",
                choices: [
                    Choice(text: String(localized: "Jura"), isCorrect: true),
                    Choice(text: String(localized: "Valais")),
                    Choice(text: String(localized: "Neuchâtel")),
                    Choice(text: String(localized: "Geneva"))
                ]
            )
        ]
    )
}
