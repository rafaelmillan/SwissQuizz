//
//  SwiftUIView.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 14.02.2024.
//

import SwiftUI

struct QuizzesView: View {
    @State private var currentQuiz: Quiz?
    private let quizes: [Quiz] = [Quiz.capitals, Quiz.cities, Quiz.flags, Quiz.food]
    private var gameMode: Binding<Bool> {
        Binding {
            currentQuiz != nil
        } set: {
            if !$0 {
                currentQuiz = nil
            }
        }
    }
    
    var body: some View {
        VStack {
            Text("SwissQuiz")
                .font(.custom("BubblegumSans-Regular", size: 72))
                .foregroundStyle(.red)
            
            Text("Select the quiz category that you want to play")
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundStyle(.secondary)
            
            ForEach(quizes) { quiz in
                QuizMenuItemView(quiz: quiz) { currentQuiz = quiz }
            }

            Spacer()
        }
        .padding()
        .buttonStyle(.bordered)
        .fullScreenCover(isPresented: gameMode) {
            if let currentQuiz = currentQuiz {
                QuizView(quiz: currentQuiz)
            }
        }
    }
}

#Preview {
    QuizzesView()
}
