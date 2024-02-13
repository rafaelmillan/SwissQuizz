//
//  QuizMenuView.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 11.02.2024.
//

import SwiftUI

struct QuizMenuView: View {
    let quiz: Quiz
    var buttonFunction = {}
    
    var body: some View {
        Button {
            buttonFunction()
        } label: {
            VStack {
                HStack {
                        Label(quiz.label, systemImage: quiz.systemImage)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .symbolRenderingMode(.hierarchical)
                                            
                    Spacer()

                    Text("\(quiz.maxScore) pts")
                }
                .font(.custom("BubblegumSans-Regular", size: 24))
                
                Text(quiz.description)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding()
            .background(Color.red.opacity(0.2))
            .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
            .foregroundStyle(.red)
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    QuizMenuView(quiz: Quiz.capitals)
}
