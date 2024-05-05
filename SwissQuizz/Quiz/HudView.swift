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
    var correction: DetailedCorrection? = nil
    var backround: Color {
        switch correction {
        case .correct: .green
        case .incorrect: .red
        case .incomplete: .orange
        default: .black
        }
    }
    var icon: String {
        switch correction {
        case .correct: "checkmark.circle.fill"
        case .incorrect: "exclamationmark.circle.fill"
        case .incomplete: "exclamationmark.circle.fill"
        default: ""
        }
    }
    var label: String {
        switch correction {
        case .correct: String(localized: "Correct")
        case .incorrect: String(localized: "Incorrect")
        case .incomplete: String(localized: "Incomplete")
        default: ""
        }
    }
    
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
            if (correction != nil) {
                HStack {
                    Image(systemName: icon)
                    Text(label)
                }
                .font(.custom("BubblegumSans-Regular", size: 24))
                .padding(.horizontal, 20)
                .padding(.vertical, 10)
                .background(backround)
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
            HudView(score: 3510, questionCount: 5, currentQuestionIndex: 2, correction: .correct)
        }
        HudView(score: 3510, questionCount: 5, currentQuestionIndex: 2, overImage: false, correction: .correct)
        ZStack {
            Color.black
            HudView(score: 3510, questionCount: 5, currentQuestionIndex: 2, correction: .incorrect)
        }
        HudView(score: 3510, questionCount: 5, currentQuestionIndex: 2, overImage: false, correction: .incorrect)
        
        ZStack {
            Color.black
            HudView(score: 3510, questionCount: 5, currentQuestionIndex: 2, correction: .incomplete)
        }
        HudView(score: 3510, questionCount: 5, currentQuestionIndex: 2, overImage: false, correction: .incomplete)
    }
}
