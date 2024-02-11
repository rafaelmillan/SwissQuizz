//
//  Quiz.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 04.12.2023.
//

import SwiftUI
import MapKit

struct HudView: View {
    var score: Int
    var questionCount: Int
    var currentQuestionIndex: Int
    var onClose = {}
    
    var body: some View {
        ZStack {
            HStack(spacing: 50) {
                CloseButtonView(action: onClose)

                Spacer()
                
                Text("\(score) pts")
                    .font(.custom("BubblegumSans-Regular", size: 24))
                    .foregroundStyle(.red)
                    .contentTransition(.numericText())
            }
            
            ProgressView(value: Float(currentQuestionIndex + 1), total: Float(questionCount)) {} currentValueLabel: {
                Text("\(currentQuestionIndex + 1)/\(questionCount) questions")
            }
            .progressViewStyle(.linear)
            .tint(.red)
            .frame(width: 150)
        }
        .padding()
    }
}

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
                FinalScoreView(score: score, onDismiss: endGame)
            } else {
                VStack {
                    if let mapRegion = currentQuestion.mapRegion {
                        ZStack(alignment: .top) {
                            Map(initialPosition: .region(mapRegion), interactionModes: [])
                                .mapStyle(.imagery)
                                .id(currentQuestion.id)
                                .transition(.asymmetric(
                                    insertion: .move(edge: .trailing),
                                    removal: .move(edge: .leading)
                                ))
                            
                            HudView(
                                score: score,
                                questionCount: quiz.questions.count,
                                currentQuestionIndex: currentQuestionIndex,
                                onClose: endGame
                            )
                            .background(.thinMaterial)
                            .clipShape(.capsule)
                            .padding([.horizontal, .bottom])
                        }
                    } else {
                        HudView(
                            score: score,
                            questionCount: quiz.questions.count,
                            currentQuestionIndex: currentQuestionIndex,
                            onClose: endGame
                        )
                    }
                                   
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

                    
                    QuestionView(question: currentQuestion, score: $score, seed: seed + currentQuestionIndex, onCorrection: updateScore, onDismissal: advanceQuestion)
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
        if currentQuestionIndex + 1 == quiz.questions.count {
            calculateAndShowFinalScore()
        } else {
            withAnimation {
                currentQuestionIndex += 1
            }
        }
    }
}

#Preview {
    QuizView(quiz: Quiz.cities)
}
