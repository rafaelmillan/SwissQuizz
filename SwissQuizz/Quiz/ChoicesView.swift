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
    var onDismissal: @MainActor () -> Void = {}
    var onCorrection: (DetailedCorrection) -> Void = { _ in }
    var question: Question {
        answer.question
    }
    
    var body: some View {
        VStack {
            ForEach(question.shuffledChoices(seed: seed), id: \.text) { choice in
                ChoiceView(choice: choice, answer: answer, showCorrection: showCorrection)
                    .animation(.easeInOut, value: showCorrection)
            }
            .id(question.id)
            .modifier(BackwardCompatibleFeedback(isCorrect: answer.isCorrect, showCorrection: showCorrection))
            
            if !showCorrection {
                Button {
                    showCorrection = true
                    onCorrection(answer.detailedCorrection)
                } label: {
                    Text("Check")
                        .frame(maxWidth: .infinity)
                        .font(.custom("BubblegumSans-Regular", size: 24))
                }
                .buttonStyle(.borderedProminent)
                .tint(.red)
                .disabled(answer.choices.isEmpty)
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
}

struct BackwardCompatibleFeedback: ViewModifier {
    var isCorrect: Bool
    var showCorrection: Bool
    
    func body(content: Content) -> some View {
        if #available(iOS 17.0, *) {
            content
                .sensoryFeedback(.error, trigger: showCorrection) { _old, new in
                    new && !isCorrect
                }
        } else {
            content
        }
    }
}

#Preview {
    ChoicesView(answer: Answer(question: Quiz.capitals.questions[0]), seed: 1)
}
