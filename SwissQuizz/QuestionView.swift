//
//  QuestionView.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 06.01.2024.
//

import SwiftUI

struct QuestionView: View {
    var question: Question
    var seed: Int
    var onCorrection: (Bool) -> Void = { _ in }
    var onDismissal: () -> Void = {}

    var body: some View {
        VStack(spacing: 5) {
            Text(question.prompt)
                .font(.custom("BubblegumSans-Regular", size: 36))
                .frame(maxWidth: .infinity, alignment: .leading)
                .fixedSize(horizontal: false, vertical: true)
                .foregroundStyle(.red)
            
            if question.allowMultipleChoices {
                Text("Multiple answers are possible")
                    .font(.subheadline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundStyle(.secondary)
            }
            
            ChoicesView(answer: Answer(question: question), seed: seed, onDismissal: onDismissal, onCorrection: onCorrection)
        }
        .padding()
    }
}

#Preview {
    QuestionView(question: Quiz.food.questions[0], seed: 1)
}
