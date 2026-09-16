//
//  ContentView.swift
//  ToastsModifier
//
//  Created by Manyuchi, Carrington C on 2026/09/16.
//

import SwiftUI

struct ToastDemoView: View {
    let text: String
    @State private var showToast: Bool = true
    
    var showTextPrompt: String {
        showToast ? "Hide Toast" : "Show Toast"
    }
    
    var body: some View {
        VStack {
            Spacer()
            Button {
                withAnimation {
                    showToast.toggle()
                }
            } label: {
                Text(showTextPrompt)
            }
            
            Spacer()
            
            ToastView(text: text)
                .offset(y: showToast ? 0 : 200)
        }
        .padding()
    }
}

#Preview {
    ToastDemoView(text: "Toast is Delicious!")
}


struct ToastView: View {
    let text: String
    let color: Color
    let textColor: Color
    
    
    init(
        text: String,
        color: Color = .black.opacity(0.8),
        textColor: Color = .white
    ) {
        self.color = color
        self.text = text
        self.textColor = textColor
    }
    
    
    var body: some View {
        Text(text)
            .padding(.horizontal, 20)
            .padding(.vertical, 10)
            .foregroundStyle(textColor)
            .background(
                Capsule()
                    .fill(color)
            )
            .shadow(color: color, radius: 5, x: 0, y: 3)
    }
}
