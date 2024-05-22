//
//  ExpViewsAsProperties.swift
//  ViewsAndModifiers
//
//  Created by Bugra Aslan on 21.05.2024.
//

import SwiftUI

struct ExpViewsAsProperties: View {
    var motto1 = Text("Draco dormiens")
    var motto2 = Text("nunquam titillandus")
    
    var motto3: some View {
        HStack {
            Text("Memento Mori")
            Text("Memento Vivere")
        }
    }
    
    var motto4: some View {
        Group {
            Text("Memento Mori")
            Text("Memento Vivere")
        }
    }
    
    @ViewBuilder var motto5: some View {
        Text("Memento Mori")
        Text("Memento Vivere")
    }
    
    var body: some View {
        // Difference between using Stacks and Group can be seen here
        // Similarty between using @ViewBuilder and Group can be also seen
        VStack {
            Spacer()
            motto3
            Spacer()
            motto4
            Spacer()
            motto5
            Spacer()
        }
    }
}

#Preview {
    ExpViewsAsProperties()
}
