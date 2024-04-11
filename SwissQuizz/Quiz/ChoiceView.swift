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
        .toggleStyle(CheckToggleStyle(showCorrection: showCorrection, isCorrect: choice.isCorrect, multipleChoice: answer.question.allowMultipleChoices))
        .disabled(showCorrection)
    }
}

struct CheckToggleStyle: ToggleStyle {
    var showCorrection = false
    var isCorrect: Bool
    var multipleChoice: Bool
    private var selectedIcon: String {
        multipleChoice ? "checkmark.square.fill" : "checkmark.circle.fill"
    }
    private var unselectedIcon: String {
        multipleChoice ? "square" : "circle"
    }
    
    func makeBody(configuration: Configuration) -> some View {
        Button {
            configuration.isOn.toggle()
        } label: {
            HStack {
                Label {
                    if showCorrection && !isCorrect {
                        configuration.label
                            .foregroundStyle(.secondary)
                            .overlay(Rectangle().frame(height: 3))
                    } else {
                        configuration.label
                    }
                } icon: {
                    Image(systemName: configuration.isOn ? selectedIcon : unselectedIcon)
                        .imageScale(.large)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.custom("BubblegumSans-Regular", size: 24))
            }
            .padding(10)
            .foregroundStyle(.red)
            .background(Color.red.opacity(0.2))
            .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
        }
    }
}

#Preview {
    var answer = Answer(question: Quiz.capitals.questions[0])
    var answer2 = Answer(question: Quiz.capitals.questions[0])
    var answer3 = Answer(question: Quiz.food.questions[0])
    answer.select(Quiz.capitals.questions[0].choices[2])
    answer2.select(Quiz.capitals.questions[0].choices[0])
    return VStack {
        ChoiceView(choice: Quiz.capitals.questions[0].choices[0], answer: answer)
        ChoiceView(choice: Quiz.capitals.questions[0].choices[0], answer: answer, showCorrection: true)
        ChoiceView(choice: Quiz.capitals.questions[0].choices[0], answer: answer2, showCorrection: true)
        ChoiceView(choice: Quiz.capitals.questions[0].choices[2], answer: answer, showCorrection: true)
        ChoiceView(choice: Quiz.food.questions[0].choices[1], answer: answer3, showCorrection: true)
    }
    .padding()
}
