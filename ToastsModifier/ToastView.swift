//
//  ToastView.swift
//  ToastsModifier
//
//  Created by Manyuchi, Carrington C on 2026/09/16.
//



import SwiftUI

struct ToastView: View {
    let text: String
    @Binding var showToast: Bool
    
    var body: some View {
            TextWithBackgroundView(text: text)
                .offset(y: showToast ? 0 : 100)
                .frame(maxHeight: .infinity, alignment: .bottom)
    }
}


#Preview {
    ToastView(text: "Hello Toast", showToast: .constant(true))
}
