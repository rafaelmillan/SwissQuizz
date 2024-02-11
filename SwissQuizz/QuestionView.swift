//
//  QuestionView.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 06.01.2024.
//

import SwiftUI

struct QuestionView: View {
    @State var question: Question
    @State private var showCorrection = false
    @Binding var score: Int
    var seed: Int
    var onCorrection: (Bool) -> Void = { _ in }
    var onDismissal: () -> Void = {}

    var body: some View {
        VStack {
            VStack {
                Text(question.prompt)
                    .font(.custom("BubblegumSans-Regular", size: 36))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .fixedSize(horizontal: false, vertical: true)
                    .foregroundStyle(.red)
                
                if question.allowMultipleAnswers {
                    Text("Multiple answers are possible")
                        .font(.subheadline)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundStyle(.secondary)
                }
                
                // TODO: Reset answer responses
                ForEach(question.shuffledAnswers(seed: seed), id: \.text) { answer in
                    AnswerView(answer: answer, showCorrection: showCorrection) { selectedAnswer in
                        guard !question.allowMultipleAnswers else { return }
                        
                        question.answers.forEach { answer in
                            if answer.isSelected && answer.text != selectedAnswer.text {
                                answer.isSelected.toggle()
                            }
                        }
                    }
                }
                .id(question.id)
                
                if !showCorrection {
                    Button {
                        showCorrection = true
                        onCorrection(question.answeredCorrectly)
                    } label: {
                        Text("Check")
                            .frame(maxWidth: .infinity)
                            .font(.custom("BubblegumSans-Regular", size: 24))
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.red)
                    .disabled(question.answers.allSatisfy({ !$0.isSelected }))
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
            .padding()
        }
    }
}

#Preview {
    QuestionView(question: Quiz.cities.questions[0], score: .constant(0), seed: 1)
}
