//
//  SwiftUIView.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 14.02.2024.
//

import SwiftUI

struct QuizzesView: View {
    @State private var currentQuiz: Quiz?
    @EnvironmentObject var scores: HighScores
    private let quizes: [Quiz] = [Quiz.capitals, Quiz.cities, Quiz.flags, Quiz.food, Quiz.maps, Quiz.sweden, Quiz.records]
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
            Text("SwissTrivia")
                .font(.custom("BubblegumSans-Regular", size: 72))
                .foregroundStyle(.red)
            
            Text("Select a category to start playing:")
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundStyle(.secondary)
            
            ForEach(quizes) { quiz in
                QuizMenuItemView(quiz: quiz) { currentQuiz = quiz }
            }
            if scores.sum > 0 {
                HStack() {
                    Image(systemName: "trophy.fill")
                    Text("\(scores.sum) pts")                .font(.custom("BubblegumSans-Regular", size: 36))
                    Image(systemName: "trophy.fill")
                }
                .foregroundStyle(.red)
                Text("Total high score")
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
    QuizzesView().environmentObject(HighScores.shared)
}
