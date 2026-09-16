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
            
            TextWithBackgroundView(text: text)
                .offset(y: showToast ? 0 : 200)
        }
        .padding()
    }
}

#Preview {
    ToastDemoView(text: "Toast is Delicious!")
}

