//
//  TextWithDifferentColorBorder.swift
//  ViewsAndModifiers
//
//  Created by Bugra Aslan on 20.05.2024.
//

import SwiftUI

struct TextWithDifferentColorBorder: View {
    var body: some View {
        Text("Hello World!")
            .padding()
            .background(.red)
            .padding()
            .background(.orange)
            .padding()
            .background(.yellow)
            .padding()
            .background(.green)
            .padding()
            .background(.blue)
            .padding()
            .background(.purple)
    }
}

#Preview {
    TextWithDifferentColorBorder()
}
