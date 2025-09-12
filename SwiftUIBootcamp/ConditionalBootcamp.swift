//
//  ConditionalBootcamp.swift
//  SwiftUIProject1
//
//  Created by Lindokuhle Khumalo on 2025/07/14.
//

import SwiftUI

struct ConditionalBootcamp: View {
    
    // .toggles() toggles between a Bool variable
    // .description show a textual representation of a Bool
    
    @State var showCircle = false
    @State var showRectangle = false
    
    var body: some View {
        VStack(spacing: 20) {
            
            
            Button("Circle Button: \(showCircle.description)") {
                showCircle.toggle()
            }
            
            Button("Rectangle Button: \(showRectangle.description) ") {
                showRectangle.toggle()
            }
            
            Circle()
                .frame(width: 100, height: 100)
            
            if showCircle {
                Circle()
                    .frame(width: 100, height: 100)
            }
            
            if showRectangle {
                Rectangle()
                    .frame(width: 200, height: 100)
            }
            
            
            if showCircle && showRectangle {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 200, height: 100)
            }
            
            Spacer()
        }
    }
}

struct ConditionalBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalBootcamp()
    }
}
