//
//  Button.swift
//  ViewsAndModifiers
//
//  Created by Bugra Aslan on 20.05.2024.
//

import SwiftUI

struct ButtonBackgroundColorFirstFrameLater: View {
    var body: some View {
        Button("Hello World!") {
            print(type(of: self.body))
        }
        .background(.red)
        .frame(width: 200, height: 200)
    }
}

#Preview {
    ButtonBackgroundColorFirstFrameLater()
}
