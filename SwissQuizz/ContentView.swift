//
//  ContentView.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 04.12.2023.
//

import SwiftUI

struct QuizMenuView: View {
    let quiz: any Quiz
    var buttonFunction = {}
    
    var body: some View {
        Button {
            buttonFunction()
        } label: {
            HStack {
                Label(quiz.label, systemImage: quiz.systemImage)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Spacer()
                Text("\(quiz.maxScore) pts")
            }
        }
    }
}

struct ContentView: View {
    @State private var currentQuiz: (any Quiz)?
    private let quizes: [any Quiz] = [CapitalsQuiz(), CitiesQuiz(), FlagsQuiz()]
    
    var body: some View {
        if let quiz = currentQuiz {
            QuizView(quiz: quiz) { currentQuiz = nil }
        } else {
            VStack {
                Text("SwissQuiz")
//                    .font(.largeTitle)
                    .font(Font.custom("CevicheOne-Regular", size: 32))
                
                ForEach(quizes, id: \.slug) { quiz in
                    QuizMenuView(quiz: quiz) { currentQuiz = quiz }
                }
                
                Spacer()
            }
            .padding()
            .buttonStyle(.bordered)
        }
    }
}

#Preview {
    ContentView()
}
