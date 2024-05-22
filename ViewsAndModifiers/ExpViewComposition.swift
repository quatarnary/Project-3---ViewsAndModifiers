//
//  ExpViewComposition.swift
//  ViewsAndModifiers
//
//  Created by Bugra Aslan on 21.05.2024.
//

import SwiftUI

struct CustomCapsuleText: View {
    var customText: String
    @State var customForegroundStyleColor: Color = .white
    
    var body: some View {
        Text(customText)
            .font(.largeTitle)
            .padding()
            .foregroundStyle(customForegroundStyleColor)
            .background(.teal)
            .clipShape(.capsule)
    }
}

struct ExpViewComposition: View {
    var something = CustomCapsuleText(customText: "Gello")
    
    var body: some View {
        HStack(spacing: 10) {
            CustomCapsuleText(customText: "Memento")
            CustomCapsuleText(customText: "Vivere", customForegroundStyleColor: .black)
        }
    }
}

#Preview {
    ExpViewComposition()
}
