//
//  SwiftUIView.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 14.02.2024.
//

import SwiftUI

struct QuizzesView: View {
    @State private var currentQuiz: Quiz?
    @EnvironmentObject var scores: Scores
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
        ScrollView {
            Text("SwissQuiz")
                .font(.custom("BubblegumSans-Regular", size: 72))
                .foregroundStyle(.red)
            
            Text("Select the quiz category that you want to play")
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundStyle(.secondary)
            
            ForEach(quizes) { quiz in
                QuizMenuItemView(quiz: quiz) { currentQuiz = quiz }
            }
            if scores.sum > 0 {
                HStack() {
                    Image(systemName: "star.fill")
                    Text("\(scores.sum) pts")                .font(.custom("BubblegumSans-Regular", size: 36))
                    Image(systemName: "star.fill")
                }
                .foregroundStyle(.red)
                Text("Total max score")
                    .foregroundStyle(.secondary)
            }
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
    QuizzesView().environmentObject(Scores.shared)
}
