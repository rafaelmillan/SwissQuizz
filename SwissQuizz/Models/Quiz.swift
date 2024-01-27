//
//  Quiz.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 07.01.2024.
//

import Foundation

protocol Quiz {
    var slug: String { get }
    var label: String { get }
    var systemImage: String { get }
    var questions: [Question] { get }
}

extension Quiz {    
    var maxScore: Int {
        UserDefaults.standard.integer(forKey: slug)
    }
    
    func updateMaxScore(_ newScore: Int) {
        let newMaxScore = [newScore, maxScore].max() ?? 0
        
        UserDefaults.standard.set(newMaxScore, forKey: slug)
        
    }
}
