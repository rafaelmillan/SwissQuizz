//
//  Answer.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 11.02.2024.
//

import Foundation

enum DetailedCorrection {
    case correct, incorrect, incomplete
}

@MainActor
class Answer: ObservableObject {
    @Published var choices: Set<Choice>
    let question: Question
    var isCorrect: Bool {
        correctChoices == choices
    }
    
    var detailedCorrection: DetailedCorrection {
        if isCorrect {
            return .correct
        } else if correctChoices.subtracting(choices).count == correctChoices.count || !choices.allSatisfy({ correctChoices.contains($0) }) {
            return .incorrect
        } else {
            return .incomplete
        }
    }
    
    func isSelected(_ choice: Choice) -> Bool {
        choices.contains(choice)
    }
    
    func select(_ choice: Choice) {
        if !question.allowMultipleChoices {
            choices.removeAll()
        }
        
        choices.insert(choice)
    }
    
    func unselect(_ choice: Choice) {
        choices.remove(choice)
    }
    
    init(question: Question) {
        self.choices = []
        self.question = question
    }
    
    private var correctChoices: Set<Choice> {
        Set(question.choices.filter { $0.isCorrect })
    }
}
