//
//  AnswerView.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 03.01.2024.
//

import Foundation
import SwiftUI

struct CheckToggleStyle: ToggleStyle {
    var showCorrection = false
    var isCorrect: Bool
    
    func makeBody(configuration: Configuration) -> some View {
        Button {
            configuration.isOn.toggle()
        } label: {
            HStack {
                Label {
                    configuration.label
                } icon: {
                    Image(systemName: configuration.isOn ? "checkmark.square.fill" : "square")
                        .imageScale(.large)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                
                if showCorrection {
                    Spacer()
                    
                    if configuration.isOn && isCorrect {
                        Image(systemName: "checkmark.circle")
                    } else if configuration.isOn && !isCorrect  {
                        Image(systemName: "x.circle")
                    } else if !configuration.isOn && isCorrect  {
                        Image(systemName: "checkmark.circle.trianglebadge.exclamationmark")
                    }
                }
            }
            .padding(10)
            .foregroundStyle(.red)
            .background(Color.red.opacity(0.2))
            .font(.custom("BubblegumSans-Regular", size: 24))
            .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
        }
    }
}

struct AnswerView: View {
    @State var answer: Answer
    var showCorrection = false
    var onSelection: (Answer) -> Void = { _ in }
    
    var body: some View {
        Toggle(isOn: $answer.isSelected) {
            Text(answer.text)
        }
        .toggleStyle(CheckToggleStyle(showCorrection: showCorrection, isCorrect: answer.isCorrect))
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
        AnswerView(answer: Quiz.capitals.questions[0].answers[0])
        AnswerView(answer: Quiz.capitals.questions[0].answers[0], showCorrection: true)
        AnswerView(answer: Quiz.capitals.questions[0].answers[1], showCorrection: true)
    }
}
