//
//  ModifiersConditional.swift
//  ViewsAndModifiers
//
//  Created by Bugra Aslan on 20.05.2024.
//

import SwiftUI

struct ModifiersConditional: View {
    @State private var useRedText = false
    
    var body: some View {
        Button("Hello World") {
            // flip the Boolean between true and false
            useRedText.toggle()
        }
        .foregroundStyle(useRedText ? .red : .blue)
    }
}

#Preview {
    ModifiersConditional()
}
