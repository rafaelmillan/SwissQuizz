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
    @State private var timeBonus: Int = 0
    @State private var correctCount: Int = 0
    @State private var currentQuestionIndex = 0
    @State private var showScoreScreen = false
    @State private var startTime = Date()
    @State private var correction: DetailedCorrection? = nil
    var endGame = {}
    
    private var currentQuestion: Question {
        quiz.shuffledQuestions(seed: seed)[currentQuestionIndex]
    }
    
    var body: some View {
        VStack {
            if showScoreScreen {
                FinalScoreView(score: score, timeBonus: timeBonus, correctCount: correctCount, questionCount: quiz.questions.count)
                    .background()
                    .transition(.move(edge: .bottom))
            } else {
                VStack(spacing: 0) {
                    if let coordinates = currentQuestion.coordinates {
                        ZStack(alignment: .top) {
                            MapView(coordinates: coordinates)
                                .id(currentQuestion.id)
                            
                            HudView(
                                score: score,
                                questionCount: quiz.questions.count,
                                currentQuestionIndex: currentQuestionIndex,
                                correction: correction
                            )
                            .shadow(color: .black.opacity(0.5), radius: 10)
                        }
                    } else {
                        if let image = currentQuestion.image {
                            if image.contains("flag") || image.contains("maps") {
                                HudView(
                                    score: score,
                                    questionCount: quiz.questions.count,
                                    currentQuestionIndex: currentQuestionIndex,
                                    overImage: false,
                                    correction: correction
                                )
                                
                                if image.contains("flag") {
                                    Image(image)
                                        .resizable()
                                        .scaledToFit()
                                        .id(currentQuestion.id)
                                        .shadow(color: .secondary, radius: 5)
                                        .frame(maxWidth: .infinity)
                                        .background()
                                        .transition(.asymmetric(
                                            insertion: .move(edge: .trailing),
                                            removal: .move(edge: .leading)
                                        ))
                                } else {
                                    // Map
                                    Image(image)
                                        .resizable()
                                        .scaledToFit()
                                        .id(currentQuestion.id)
                                        .frame(maxWidth: .infinity)
                                        .background()
                                    HStack {
                                        Spacer()
                                        Link(destination: URL(string: "https://w.wiki/9fjq")!) {
                                            Text("Image: CC BY-SA 3.0 Poulpy")
                                                .font(.caption)
                                                .padding([.trailing])
                                                .padding(.top, 5)
                                                .underline()
                                        }
                                        .foregroundStyle(.secondary)
                                    }
                                }
                            } else {
                                VStack {
                                    HudView(
                                        score: score,
                                        questionCount: quiz.questions.count,
                                        currentQuestionIndex: currentQuestionIndex,
                                        correction: correction
                                    )
                                    .shadow(color: .black.opacity(0.5), radius: 10)
                                    Spacer()
                                }
                                .background(
                                    GeometryReader { geo in
                                        Image(image)
                                            .resizable()
                                            .scaledToFill()
                                            .id(currentQuestion.id)
                                            .transition(.asymmetric(
                                                insertion: .move(edge: .trailing),
                                                removal: .move(edge: .leading)
                                            ))
                                            .frame(width: geo.size.width, height: geo.size.height)
                                            .clipped()
                                            }
                                        .ignoresSafeArea()
                                )
                                if let credit = currentQuestion.credit {
                                    HStack {
                                        Spacer()
                                        Link(destination: credit.url) {
                                            Text("Image: \(credit.label)")
                                                .font(.caption)
                                                .padding([.trailing])
                                                .padding(.top, 5)
                                                .underline()
                                        }
                                        .foregroundStyle(.secondary)
                                    }
                                    .id(currentQuestion.id)
                                    .transition(.asymmetric(
                                        insertion: .move(edge: .trailing),
                                        removal: .move(edge: .leading)
                                    ))
                                }
                            }
                        } else {
                            HudView(
                                score: score,
                                questionCount: quiz.questions.count,
                                currentQuestionIndex: currentQuestionIndex,
                                overImage: false,
                                correction: correction
                            )
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
    
    @MainActor func calculateAndShowFinalScore() {
        if quiz.questions.count == correctCount {
            let maxTimeBonus = 10_000 * quiz.questions.count
            timeBonus = (maxTimeBonus / Int(-startTime.timeIntervalSinceNow))
            score += timeBonus
        }
        HighScores.find(quiz.id).submit(score)
        showScoreScreen = true
    }
    
    func updateScore(detailedCorrection: DetailedCorrection) {
        withAnimation {
            correction = detailedCorrection
        }

        if detailedCorrection == .correct {
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
    
    @MainActor func advanceQuestion() {
        withAnimation {
            if currentQuestionIndex + 1 == quiz.questions.count {
                calculateAndShowFinalScore()
            } else {
                currentQuestionIndex += 1
                correction = nil
            }
        }
    }
}

#Preview {
    QuizView(quiz: Quiz.maps)
}
