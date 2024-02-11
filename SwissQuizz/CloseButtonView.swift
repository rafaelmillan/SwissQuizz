//
//  CloseButtonView.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 02.02.2024.
//

import SwiftUI

struct CloseButtonView: View {
    var action = {}
    
    var body: some View {
        Button(action: action) {
            Image(systemName: "xmark.circle.fill")
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(.secondary)
        }
    }
}

#Preview {
    CloseButtonView()
}
