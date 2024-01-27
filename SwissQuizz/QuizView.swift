//
//  Quiz.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 04.12.2023.
//

import SwiftUI

struct QuizView: View {
    var quiz: any Quiz

    @State private var score: Int = 0
    @State private var correctCount: Int = 0
    @State private var currentQuestionIndex = 0
    @State private var showScoreScreen = false
    @State private var startTime = Date()
    var endGame = {}
    
    private var currentQuestion: Question {
        quiz.questions[currentQuestionIndex]
    }
    private var formattedScore: Int {
        Int(score)
    }
    
    var body: some View {
        VStack {
            if showScoreScreen {
                Text("Your final score is \(formattedScore)")
                    .font(.title)
                Button("OK", action: endGame)
                    .padding()
            } else {
                HStack {
                    Button("Dismiss", role: .destructive, action: endGame)
                    
                    Spacer()
                    
                    Text("Score: \(formattedScore)")
                }

                Spacer()

                QuestionView(question: currentQuestion, score: $score, onCorrection: updateScore, onDismissal: advanceQuestion)
            }
        }
        .padding()
    }
    
    func calculateAndShowFinalScore() {
        if quiz.questions.count == correctCount {
            score += (10_000 / Int(-startTime.timeIntervalSinceNow))
        }
        quiz.updateMaxScore(score)
        showScoreScreen = true
    }
    
    func updateScore(isCorrect: Bool) {
        if isCorrect {
            correctCount += 1
            if score == 0 {
                score = 10
            } else {
                score += (10 * correctCount)
            }
        }
    }
    
    func advanceQuestion() {
        if currentQuestionIndex + 1 == quiz.questions.count {
            calculateAndShowFinalScore()
        } else {
            currentQuestionIndex += 1
        }
    }
}

#Preview {
    QuizView(quiz: CitiesQuiz())
}
