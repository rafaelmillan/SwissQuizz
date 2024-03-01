//
//  HudView.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 11.02.2024.
//

import SwiftUI

struct HudView: View {
    var score: Int
    var questionCount: Int
    var currentQuestionIndex: Int
    
    var body: some View {
        ZStack {
            HStack(spacing: 50) {
                CloseButtonView()

                Spacer()
                
                Text("\(score) pts")
                    .font(.custom("BubblegumSans-Regular", size: 24))
                    .foregroundStyle(.red)
                    .contentTransition(.numericText())
            }
            
            ProgressView(value: Float(currentQuestionIndex + 1), total: Float(questionCount)) {} currentValueLabel: {
                Text("\(currentQuestionIndex + 1)/\(questionCount) questions")
            }
            .progressViewStyle(.linear)
            .tint(.red)
            .frame(width: 150)
        }
        .padding()
    }
}

#Preview {
    HudView(score: 10, questionCount: 5, currentQuestionIndex: 2)
}
