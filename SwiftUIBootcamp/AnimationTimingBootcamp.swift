//
//  AnimationTimingBootcamp.swift
//  SwiftUIProject1
//
//  Created by Lindokuhle Khumalo on 2025/07/14.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    
    @State var isAnimating = false
    @State private var offset: CGFloat = 200.0
    
    var body: some View {
        VStack {
            Button("Button") {
                isAnimating.toggle()
            }
            
            RoundedRectangle(cornerRadius: 20.0)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(Animation.easeIn, value: offset)
            
            RoundedRectangle(cornerRadius: 20.0)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(Animation.easeIn, value: offset)
            
            RoundedRectangle(cornerRadius: 20.0)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(Animation.easeInOut, value: offset)
            
            RoundedRectangle(cornerRadius: 20.0)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(Animation.easeOut, value: offset)
        }
        
    }
}

struct AnimationTimingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingBootcamp()
    }
}
