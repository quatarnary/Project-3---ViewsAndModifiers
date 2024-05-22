//
//  Exp2CustomModifiers.swift
//  ViewsAndModifiers
//
//  Created by Bugra Aslan on 22.05.2024.
//

import SwiftUI

struct Watermark: ViewModifier {
    var text: String
    
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            Text(text)
                .font(.caption)
                .foregroundStyle(.white)
                .padding(5)
                .background(.ultraThinMaterial)
        }
    }
}

extension View {
    func watermarked(with text: String) -> some View {
        modifier(Watermark(text: text))
    }
}

struct Exp2CustomModifiers: View {
    var body: some View {
        Color.blue
            .frame(width: 300, height: 200)
            .watermarked(with: "Quatarnary")
    }
}

#Preview {
    Exp2CustomModifiers()
}
