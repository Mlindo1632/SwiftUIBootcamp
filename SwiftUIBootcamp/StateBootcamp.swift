//
//  StateBootcamp.swift
//  SwiftUIProject1
//
//  Created by Lindokuhle Khumalo on 2025/07/11.
//

import SwiftUI

struct StateBootcamp: View {
    
    // the state property wrapper (@State) is used to manage the local data to a SwiftUI view. It helps maintain a single source of truth for a given view, ensuring that changes to data immediately update the user interface.
    
    @State var backgrounColor: Color
    @State var myTitle: String
    @State var count: Int
    
    var body: some View {
        
        ZStack {
            backgrounColor
                .ignoresSafeArea()
            
            // content
            VStack(spacing: 20) {
             Text(myTitle)
                    .font(.title)
                Text("Count: \(count)")
                        .font(.headline)
                        .underline()
                
                HStack(spacing: 20) {
                    Button("Button 1") {
                        backgrounColor = .pink
                        myTitle = "Pink"
                        count += 1
                    }
                    
                    Button("Button 2") {
                        backgrounColor = .green
                        myTitle = "Green"
                        count -= 1
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp(backgrounColor: .brown, myTitle: "Brown", count: 0)
    }
}
