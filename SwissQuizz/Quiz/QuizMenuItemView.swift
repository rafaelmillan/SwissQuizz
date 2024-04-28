//
//  QuizMenuView.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 11.02.2024.
//

import SwiftUI

struct ScoreView: View {
    @ObservedObject var score: HighScore
    var points: Int {
        if ProcessInfo.processInfo.environment["XCODE_RUNNING_FOR_PREVIEWS"] == "1" && score.points == 0 {
            return Int.random(in: 1000...10_000)
        } else {
            return score.points
        }
    }
    
    var body: some View {
        Text("\(points) pts")
    }
}

struct QuizMenuItemView: View {
    let quiz: Quiz
    var buttonFunction = {}
    
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

                    ScoreView(score: HighScores.find(quiz.id))
                    
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
