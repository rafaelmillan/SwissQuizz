//
//  Answer.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 11.02.2024.
//

import Foundation

@MainActor
class Answer: ObservableObject {
    @Published var choices: Set<Choice>
    let question: Question
    var isCorrect: Bool {
        Set(question.choices.filter { $0.isCorrect }) == choices
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
}
