//
//  FinalScoreView.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 02.02.2024.
//

import SwiftUI

struct FinalScoreView: View {
    var score: Int
    var timeBonus: Int
    var correctCount: Int
    var questionCount: Int
    
    var body: some View {
        VStack {
            HStack {
                CloseButtonView()
                Spacer()
            }
            
            Spacer()

            Group {
                Image(systemName: "trophy.circle.fill")
                    .symbolRenderingMode(.hierarchical)
                    .resizable()
                    .frame(width: 150, height: 150)
                    .foregroundStyle(.red)
                Text("Your final score is")
                    .font(.custom("BubblegumSans-Regular", size: 24))
                    .foregroundStyle(.red)
                Text("\(score)")
                    .font(.custom("BubblegumSans-Regular", size: 48))
                    .foregroundStyle(.red)
                                
                Group {
                    Text("Correct answers: \(correctCount)/\(questionCount)")
                    if timeBonus > 0 {
                        Text("Speed bonus: \(timeBonus) pts")
                    }
                }
                .foregroundStyle(.secondary)
            }
            
            
            Spacer()
        }
        .padding()
    }
}
#Preview {
    FinalScoreView(score: 3_250, timeBonus: 500, correctCount: 23, questionCount: 26)
}
