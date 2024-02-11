//
//  ContentView.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 04.12.2023.
//

import SwiftUI

struct QuizMenuView: View {
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

                    Text("\(quiz.maxScore) pts")
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

struct ContentView: View {
    @State private var currentQuiz = Quiz.capitals
    @State private var gameMode = false
    private let quizes: [Quiz] = [Quiz.capitals, Quiz.cities, Quiz.flags, Quiz.food]
    
    var body: some View {
        VStack {
            Text("SwissQuiz")
                .font(.custom("BubblegumSans-Regular", size: 72))
                .foregroundStyle(.red)
            
            Text("Select the quiz category that you want to play")
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundStyle(.secondary)
            
            ForEach(quizes) { quiz in
                QuizMenuView(quiz: quiz) {
                    currentQuiz = quiz
                    gameMode = true
                }
                
            }

            Spacer()
        }
        .padding()
        .buttonStyle(.bordered)
        .fullScreenCover(isPresented: $gameMode) {
            QuizView(quiz: currentQuiz) { gameMode = false }
        }
    }
}

#Preview {
    ContentView()
}
