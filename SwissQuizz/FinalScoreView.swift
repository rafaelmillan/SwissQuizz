//
//  FinalScoreView.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 02.02.2024.
//

import SwiftUI

struct FinalScoreView: View {
    var score: Int
    @State private var displayedScore = 0
    var onDismiss = {}
    
    var body: some View {
        VStack {
            HStack {
                CloseButtonView(action: onDismiss)
                Spacer()
            }
            
            Spacer()
            
            Image(systemName: "trophy")
                .resizable()
                .frame(width: 150, height: 150)
            
            Text("Your final score is")
                .font(.custom("BubblegumSans-Regular", size: 24))
            Text("\(displayedScore)")
                .font(.custom("BubblegumSans-Regular", size: 48))
                .contentTransition(.numericText())
            
            Spacer()
        }
        .foregroundStyle(.red)
        .padding()
        .onAppear {
            withAnimation {
                displayedScore = score
            }
        }
    }
}
#Preview {
    FinalScoreView(score: 50_000)
}
