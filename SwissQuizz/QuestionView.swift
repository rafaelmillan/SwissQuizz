//
//  QuestionView.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 06.01.2024.
//

import SwiftUI
import MapKit

struct QuestionView: View {
    var question: Question
    @State private var showCorrection = false
    @Binding var score: Int
    var onCorrection: (Bool) -> Void = { _ in }
    var onDismissal: () -> Void = {}

    var body: some View {
        VStack {
            if let image = question.image {
                Image(image)
                    .resizable()
                    .scaledToFit()
            }
            
            if let mapRegion = question.mapRegion {
                Map(initialPosition: .region(mapRegion), interactionModes: [])
                    .mapStyle(.imagery)
                    .id(question.id)
            }
            
            Text(question.prompt)
                .font(.title)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            if question.allowMultipleAnswers {
                Text("Multiple answers are possible")
                    .font(.subheadline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundStyle(.secondary)
            }
            
            ForEach(question.answers, id: \.text) { answer in
                AnswerView(answer: answer, showCorrection: showCorrection) { selectedAnswer in
                    guard !question.allowMultipleAnswers else { return }
                    
                    question.answers.forEach { answer in
                        if answer.isSelected && answer.text != selectedAnswer.text {
                            answer.isSelected.toggle()
                        }
                    }
                }
            }
            
            if !showCorrection {
                Button {
                    showCorrection = true
                    onCorrection(question.answeredCorrectly)
                } label: {
                    Text("Submit answer")
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.borderedProminent)
                .disabled(question.answers.allSatisfy({ !$0.isSelected }))
            } else {
                Button {
                    showCorrection = false
                    onDismissal()
                } label: {
                    Text("Next question")
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.borderedProminent)
            }
        }
    }
}

#Preview {
    QuestionView(question: CitiesQuiz().questions[0], score: .constant(0))
}
