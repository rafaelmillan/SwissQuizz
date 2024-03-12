//
//  CloseButtonView.swift
//  SwissQuizz
//
//  Created by Rafael Millan on 02.02.2024.
//

import SwiftUI

struct CloseButtonView: View {
    @Environment(\.dismiss) var dismiss
    var overImage = false
    
    var body: some View {
        Button {
            dismiss()
        } label: {
            Image(systemName: "xmark.circle.fill")
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(overImage ? .white : .secondary)
        }
    }
}

#Preview {
    CloseButtonView()
}
