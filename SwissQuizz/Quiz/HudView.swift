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
    var correction: Bool? = nil
    
    var body: some View {
        ZStack {
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
            if let correction = correction {
                HStack {
                    Image(systemName: correction ? "checkmark.circle.fill" : "exclamationmark.circle.fill")
                    Text(correction ? "Correct" : "Incorrect")
                }
                .font(.custom("BubblegumSans-Regular", size: 24))
                .padding(.horizontal, 20)
                .padding(.vertical, 10)
                .background(correction ? .green : .red)
                .clipShape(Capsule())
                .foregroundStyle(.white)
                .transition(.asymmetric(
                    insertion: .move(edge: .top).combined(with: .opacity),
                    removal: .opacity
                ))
            }
        }
    }
}

#Preview {
    VStack {
        ZStack {
            Color.black
            HudView(score: 3510, questionCount: 5, currentQuestionIndex: 2)
        }
        HudView(score: 3510, questionCount: 5, currentQuestionIndex: 2, overImage: false)
        ZStack {
            Color.black
            HudView(score: 3510, questionCount: 5, currentQuestionIndex: 2, correction: true)
        }
        HudView(score: 3510, questionCount: 5, currentQuestionIndex: 2, overImage: false, correction: true)
        ZStack {
            Color.black
            HudView(score: 3510, questionCount: 5, currentQuestionIndex: 2, correction: false)
        }
        HudView(score: 3510, questionCount: 5, currentQuestionIndex: 2, overImage: false, correction: false)
    }
}
