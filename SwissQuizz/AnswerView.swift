//
//  AnswerView.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 03.01.2024.
//

import Foundation
import SwiftUI

struct AnswerView: View {
    @Bindable var answer: Answer
    var showCorrection = false
    var onSelection: (Answer) -> Void = { _ in }

    private var backgroundColor: Color? {
        if showCorrection {
            if answer.isCorrect {
                return Color.green
            } else {
                return Color.red
            }
        } else {
            return nil
        }
    }
    
    var body: some View {
        Toggle(isOn: $answer.isSelected) {
            Text(answer.text)
                .frame(maxWidth: .infinity)
        }
        .toggleStyle(.button)
        .buttonStyle(.bordered)
        .background(backgroundColor)
        .disabled(showCorrection)
        .onChange(of: answer.isSelected) {
            if answer.isSelected {
                onSelection(answer)
            }
        }
    }
}

#Preview {
    Group {
        AnswerView(answer: CapitalsQuiz().questions[0].answers[0])
        AnswerView(answer: CapitalsQuiz().questions[0].answers[0], showCorrection: true)
        AnswerView(answer: CapitalsQuiz().questions[0].answers[1], showCorrection: true)
    }
}
