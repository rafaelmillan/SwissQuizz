//
//  ChoiceView.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 03.01.2024.
//

import Foundation
import SwiftUI

struct ChoiceView: View {
    var choice: Choice
    @ObservedObject var answer: Answer
    var showCorrection = false
    var onSelection: (Choice) -> Void = { _ in }
    
    private var isSelected: Binding<Bool> {
        Binding {
            answer.isSelected(choice)
        } set: {
            if $0 {
                answer.select(choice)
            } else {
                answer.unselect(choice)
            }
        }
    }
    
    var body: some View {
        Toggle(isOn: isSelected) {
            Text(choice.text)
        }
        .toggleStyle(CheckToggleStyle(showCorrection: showCorrection, isCorrect: choice.isCorrect))
        .disabled(showCorrection)
    }
}

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

#Preview {
    Group {
        ChoiceView(choice: Quiz.capitals.questions[0].choices[0], answer: Answer(question: Quiz.capitals.questions[0]))
        ChoiceView(choice: Quiz.capitals.questions[0].choices[0], answer: Answer(question: Quiz.capitals.questions[0]), showCorrection: true)
        ChoiceView(choice: Quiz.capitals.questions[0].choices[1], answer: Answer(question: Quiz.capitals.questions[0]), showCorrection: true)
    }
}