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
    var coordinates: CLLocationCoordinate2D?
    var span: MKCoordinateSpan?
    var allowMultipleAnswers = false
    var answers: [Answer]
    var id = UUID()
    
    var answeredCorrectly: Bool {
        answers.allSatisfy({ $0.answeredCorrectly })
    }
    
    var mapRegion: MKCoordinateRegion? {
        if let coordinates = coordinates, let span = span {
            return MKCoordinateRegion(center: coordinates, span: span)
        } else {
            return nil
        }
    }
    
    func shuffledAnswers(seed: Int) -> [Answer] {
        GKMersenneTwisterRandomSource(seed: UInt64(seed)).arrayByShufflingObjects(in: answers) as! [Answer]
    }
}
