//
//  FramesBootCamp.swift
//  SwiftUIProject1
//
//  Created by Lindokuhle Khumalo on 2025/07/03.
//

import SwiftUI

struct FramesBootCamp: View {
    var body: some View {
        Text("Hello, World! My name is Lindo and I am learning SwiftUI") // The frame adjusts based on what it has to display i.e Like this long sentence.
            .background(Color.pink) // inside the frame i.e the content inside.
           // .frame(width: 106, height: 20, alignment: .center) // fixed frame size.
            .background(Color.brown) // Outside of the content
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading) // how to set content to far left.
        
        Text("Cause everybody needs a little help, on the way to relying on one's self")
            .frame(height: 100, alignment: .topTrailing)
            .background(Color.red)
            .frame(width: 120, alignment: .top)
            .background(Color.blue)
            .frame(maxWidth: .infinity, alignment: .bottomLeading)
            .background(Color.black)
            .frame(height: 340)
            .frame(maxHeight: 70, alignment: .center)
            .background(Color.green)
            .frame(width: 500, height: 270, alignment: .bottomTrailing)
            .background(Color.yellow)
        
        // General rule: when still coding, use a color for a background to debug and see proper where a frame is at on the screen.
    }
    
}

struct FramesBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        FramesBootCamp()
    }
}
