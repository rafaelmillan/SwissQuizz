//
//  Quiz.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 04.12.2023.
//

import SwiftUI
import MapKit

struct QuizView: View {
    var quiz: Quiz
    var seed = Int.random(in: 1...1000)

    @State private var score: Int = 0
    @State private var correctCount: Int = 0
    @State private var currentQuestionIndex = 0
    @State private var showScoreScreen = false
    @State private var startTime = Date()
    var endGame = {}
    
    private var currentQuestion: Question {
        quiz.shuffledQuestions(seed: seed)[currentQuestionIndex]
    }
    
    var body: some View {
        VStack {
            if showScoreScreen {
                FinalScoreView(score: score)
                    .background()
                    .transition(.move(edge: .bottom))
            } else {
                VStack(spacing: 0) {
                    if let coordinates = currentQuestion.coordinates {
                        ZStack(alignment: .top) {
                            MapView(coordinates: coordinates)
                                .disabled(true)
                                .transition(.asymmetric(
                                    insertion: .move(edge: .trailing),
                                    removal: .move(edge: .leading)
                                ))
                                .edgesIgnoringSafeArea(.all)
                                .id(currentQuestion.id)
                            
                            HudView(
                                score: score,
                                questionCount: quiz.questions.count,
                                currentQuestionIndex: currentQuestionIndex
                            )
                            .background(.thinMaterial)
                            .clipShape(.capsule)
                            .padding([.horizontal, .bottom])
                        }
                    } else {
                        HudView(
                            score: score,
                            questionCount: quiz.questions.count,
                            currentQuestionIndex: currentQuestionIndex
                        )
                        
                        if let image = currentQuestion.image {
                            Image(image)
                                .resizable()
                                .scaledToFit()
                                .border(.secondary)
                                .id(currentQuestion.id)
                                .frame(maxWidth: .infinity)
                                .background()
                                .transition(.asymmetric(
                                    insertion: .move(edge: .trailing),
                                    removal: .move(edge: .leading)
                                ))
                                

                        } else {
                            Spacer()
                        }
                    }

                    
                    QuestionView(question: currentQuestion, seed: seed + currentQuestionIndex, onCorrection: updateScore, onDismissal: advanceQuestion)
                        .id(currentQuestionIndex)
                        .transition(.asymmetric(
                            insertion: .move(edge: .trailing),
                            removal: .move(edge: .leading)
                        ))
                }
            }
        }
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
            withAnimation {
                if score == 0 {
                    score = 10
                } else {
                    score += (10 * correctCount)
                }
            }
        }
    }
    
    func advanceQuestion() {
        withAnimation {
            if currentQuestionIndex + 1 == quiz.questions.count {
                calculateAndShowFinalScore()
            } else {
                currentQuestionIndex += 1
            }
        }
    }
}

#Preview {
    QuizView(quiz: Quiz.cities)
}
