//
//  Answer.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 12.12.2023.
//

import Foundation

@Observable
class Answer {
    var text: String
    var isCorrect = false
    var isSelected = false
    
    var answeredCorrectly: Bool {
        isCorrect == isSelected
    }
    
    init(text: String, isCorrect: Bool = false, isSelected: Bool = false) {
        self.text = text
        self.isCorrect = isCorrect
        self.isSelected = isSelected
    }
}
