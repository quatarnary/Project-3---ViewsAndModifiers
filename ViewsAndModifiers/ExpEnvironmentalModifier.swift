//
//  ExpEnvironmentalModifier.swift
//  ViewsAndModifiers
//
//  Created by Bugra Aslan on 21.05.2024.
//

import SwiftUI

struct ExpEnvironmentalModifier: View {
    var body: some View {
        Spacer()
        
        VStack {
            Text("Houses")
                .font(.largeTitle)
            Text("Gryffindor")
                .font(.caption)
            Text("Hufflepuff")
            Text("Ravenclaw")
            Text("Slytherin")
        }
        .font(.title)
        
        
        Spacer()
        
        VStack {
            Text("Houses")
//                .blur(radius: 0)
            Text("Gryffindor")
            Text("Hufflepuff")
            Text("Ravenclaw")
            Text("Slytherin")
                .opacity(1)
        }
//        .blur(radius: 1)
        .opacity(0.3)
        
        Spacer()
    }
    
    
    /*    Text("Gryffindor")
     Text("Hufflepuff")
     Text("Ravenclaw")
     Text("Slytherin")*/
}

#Preview {
    ExpEnvironmentalModifier()
}
