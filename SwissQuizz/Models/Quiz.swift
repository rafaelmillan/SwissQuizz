//
//  Quiz.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 07.01.2024.
//

import Foundation
import GameplayKit

struct Quiz: Identifiable, Hashable {
    var id: String
    var label: String
    var description: String
    var systemImage: String
    var questions: [Question]

    func shuffledQuestions(seed: Int) -> [Question] {
        GKMersenneTwisterRandomSource(seed: UInt64(seed)).arrayByShufflingObjects(in: questions) as! [Question]
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    static func == (lhs: Quiz, rhs: Quiz) -> Bool {
        lhs.id == rhs.id
    }
}
