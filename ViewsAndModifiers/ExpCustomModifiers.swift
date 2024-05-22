//
//  ExpCustomModifiers.swift
//  ViewsAndModifiers
//
//  Created by Bugra Aslan on 22.05.2024.
//

import SwiftUI

struct CustomTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(.white)
            .padding()
            .background(.blue)
            .clipShape(.rect(cornerRadius: 10))
    }
}

extension View {
    func customTitleStyle() -> some View {
        modifier(CustomTitle())
    }
}

struct ExpCustomModifiers: View {
    var body: some View {
        VStack(spacing: 100) {
            Text("Hello, World!")
                .modifier(CustomTitle())
            
            Text("Hello, World!")
                .customTitleStyle()
        }
    }
}

#Preview {
    ExpCustomModifiers()
}
