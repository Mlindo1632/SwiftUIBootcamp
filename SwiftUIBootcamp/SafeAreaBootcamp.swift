//
//  SafeAreaBootcamp.swift
//  SwiftUIProject1
//
//  Created by Lindokuhle Khumalo on 2025/07/10.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    
    //Content such as Buttons, Titles, Text, items a user must see must be kept in the safe area.
    // IgnoreSafeArea should be mainly used for backround images or colors
    
    var body: some View {
        ScrollView {
            VStack {
                Text("Title goes here")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                }
            }
        }
       // .background(Color.blue)
        .background(
            Color.red
                .ignoresSafeArea(edges: .bottom)
        )
        
//        ZStack {
//            // Background
//            Color.red
//                .ignoresSafeArea()
//                // Foreground(Front), cause its the last item in the Zstack
//            VStack(alignment: .leading) {
//                Text("Hello! My name is Simon the great")
//                    .padding()
//                    .font(.largeTitle)
//            }
//        }
    }
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}
