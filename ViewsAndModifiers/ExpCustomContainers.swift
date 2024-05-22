//
//  ExpCustomContainers.swift
//  ViewsAndModifiers
//
//  Created by Bugra Aslan on 22.05.2024.
//

/* this Hacking with Swift website
 (https://www.hackingwithswift.com/books/ios-swiftui/custom-containers)
 says that putting the @ViewBuilder and sending 2 Views without using HStack
 works, because SwiftUI will automatically put the views we send in an HStack.
 
 However if we change the logic when building the GridStack and use the HStack
 at the outer layer and the VStack inside, now "SwiftUI automatically puts them
 in a VStack". So the difference is not just being able to remove the HStack
 when we call GridStack with multiple views.
 
 Depending on the implementation, "Both options work, so do whichever you prefer"
 is not a good statement.
 */

import SwiftUI

struct GridStack<Content: View>: View {
    let rows: Int
    let columns: Int
    @ViewBuilder let content: (Int, Int) -> Content
    
    var body: some View {
        HStack {
            ForEach(0..<rows, id: \.self) { row in
                VStack {
                    ForEach(0..<columns, id: \.self) { column in
                        // Modifiers here applied later
                        content(row, column)
//                            .frame(width: 70, height: 70)
                            .background(.teal)
//                            .monospaced()
                    }
                }
//                .padding()
            }
        }
    }
}

struct ExpCustomContainers: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        GridStack(rows: 4, columns: 4) {row, col in
            // Modifiers here applied first, than the ones inside the GridStack applied
            Text("|R\(row+1) C\(col+1)|")
//                .frame(width: 70, height: 70)
//                .background(.teal)
        }
        
        GridStack(rows: 4, columns: 4) { row, col in
            HStack {
                Image(systemName: "\(row * 4 + col).circle")
                Text("R\(row) C\(col)")
            }
            .frame(width: 80, height: 70)
        }
        
        GridStack(rows: 4, columns: 4) { row, col in
            Image(systemName: "\(row * 4 + col).circle")
            Text("R\(row) C\(col)")
        }
    }
}

#Preview {
    ExpCustomContainers()
}
