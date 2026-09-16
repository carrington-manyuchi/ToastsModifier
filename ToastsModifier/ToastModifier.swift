//
//  ToastModifier.swift
//  ToastsModifier
//
//  Created by Manyuchi, Carrington C on 2026/09/16.
//



import SwiftUI


struct ToastModifier: ViewModifier {
    let text: String
    @Binding var showToast: Bool
    
    func body(content: Content) -> some View {
        ZStack {
            content
            TextWithBackgroundView(text: text)
                .offset(y: showToast ? 0 : 100)
                .frame(maxHeight: .infinity, alignment: .bottom)
        }
    }
}


extension View {
    func toast(text: String, showToast: Binding<Bool>) -> some View {
        self
            .modifier(ToastModifier(text: text, showToast: showToast))
    }
}
