//
//  Question.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 12.12.2023.
//

import Foundation
import MapKit
import GameplayKit

struct Question {
    var prompt: String
    var image: String?
    var coordinates: Coordinates?
    var allowMultipleChoices = false
    var choices: [Choice]
    var id = UUID()
    var credit: Credit?

    func shuffledChoices(seed: Int) -> [Choice] {
        GKMersenneTwisterRandomSource(seed: UInt64(seed)).arrayByShufflingObjects(in: choices) as! [Choice]
    }
}

struct Coordinates {
    let latitude: Double
    let longitude: Double
}

struct Credit {
    let label: String
    let urlString: String
    
    var url: URL {
        URL(string: urlString)!
    }
}
