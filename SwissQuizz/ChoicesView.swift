//
//  ChoicesView.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 11.02.2024.
//

import SwiftUI

struct ChoicesView: View {
    @StateObject var answer: Answer
    @State private var showCorrection = false
    var seed: Int
    var onDismissal: () -> Void = {}
    var onCorrection: (Bool) -> Void = { _ in }
    var question: Question {
        answer.question
    }
    
    var body: some View {
        ForEach(question.shuffledChoices(seed: seed), id: \.text) { choice in
            ChoiceView(choice: choice, answer: answer, showCorrection: showCorrection)
        }
        .id(question.id)
        
        if !showCorrection {
            Button {
                showCorrection = true
                onCorrection(answer.isCorrect)
            } label: {
                Text("Check")
                    .frame(maxWidth: .infinity)
                    .font(.custom("BubblegumSans-Regular", size: 24))
            }
            .buttonStyle(.borderedProminent)
            .tint(.red)
        } else {
            Button {
                showCorrection = false
                onDismissal()
            } label: {
                Text("Continue")
                    .frame(maxWidth: .infinity)
                    .font(.custom("BubblegumSans-Regular", size: 24))
            }
            .buttonStyle(.borderedProminent)
            .tint(.red)
        }
    }
}

#Preview {
    ChoicesView(answer: Answer(question: Quiz.capitals.questions[0]), seed: 1)
}