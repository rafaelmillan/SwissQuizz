//
//  QuizMenuView.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 11.02.2024.
//

import SwiftUI

struct ScoreView: View {
    @ObservedObject var score: Score
    
    var body: some View {
        Text("\(score.points) pts")
    }
}

struct QuizMenuItemView: View {
    let quiz: Quiz
    var buttonFunction = {}
    @EnvironmentObject var scores: Scores
//    @StateObject private var scores: Scores.shared
    
//    init(quiz: Quiz, buttonFunction: @escaping () -> Void, maxScore: StateObject<MaxScore>) {
//        self.quiz = quiz
//        self.buttonFunction = buttonFunction
//        self._maxScore = quiz.maxScore
//    }
    
    var body: some View {
        Button {
            buttonFunction()
        } label: {
            VStack {
                HStack {
                        Label(quiz.label, systemImage: quiz.systemImage)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .symbolRenderingMode(.hierarchical)
                                            
                    Spacer()

                    ScoreView(score: Scores.find(quiz.id))
                    
                }
                .font(.custom("BubblegumSans-Regular", size: 24))
                
                Text(quiz.description)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding()
            .background(Color.red.opacity(0.2))
            .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
            .foregroundStyle(.red)
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    QuizMenuItemView(quiz: Quiz.capitals)
}
