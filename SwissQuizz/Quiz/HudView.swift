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
    var overImage = true
    
    var body: some View {
        HStack(alignment: .top) {
            CloseButtonView(overImage: overImage)

            Spacer()
            
            Group {
                Gauge(value: Float(currentQuestionIndex + 1), in: 1...Float(questionCount)) {
                    Text("PTS")
                        .foregroundStyle(overImage ? .white : .secondary)
                } currentValueLabel: {
                    Text("\(score)")
                        .contentTransition(.numericText())
                        .foregroundStyle(overImage ? .white : .primary)
                }
                .gaugeStyle(AccessoryCircularGaugeStyle())
                .tint(overImage ? .white : .red)
            }
            
        }
        .padding()
    }
}

#Preview {
    VStack {
        ZStack {
            Color.black
            HudView(score: 3510, questionCount: 5, currentQuestionIndex: 2)
        }
        HudView(score: 3510, questionCount: 5, currentQuestionIndex: 2, overImage: false)
    }
}
