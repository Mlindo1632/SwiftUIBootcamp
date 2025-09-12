//
//  AnimationBootcamp.swift
//  SwiftUIProject1
//
//  Created by Lindokuhle Khumalo on 2025/07/14.
//

import SwiftUI

struct AnimationBootcamp: View {
    
    // To understand more on offset Modifier visit: https://www.hackingwithswift.com/quick-start/swiftui/how-to-adjust-the-position-of-a-view-using-its-offset
    //  All views have a natural position inside your hierarchy, but the offset() modifier lets you move them relative to that natural position. This is particularly useful inside ZStack, where it lets you control how views should overlap.
    
    // Esentially  it moves an object left, right, up or down relative to its natural position
    
    //Important: Using offset() will cause a view to be moved relative to its natural position, but won’t affect the position of other views or any other modifiers placed after the offset. This means you need to think carefully how you use it, not least to make sure views don’t overlap if that wasn’t your intention.
    
    @State var isAnimated = false
    
    var body: some View {
        VStack {
            Button("Button") {
                withAnimation(Animation
                    .default
                    .repeatCount(10, autoreverses: true)) {
                        isAnimated.toggle()
                    }
            }
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset( y: isAnimated ? 300 : 0)
            
            Spacer()
        }
    }
}

struct AnimationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBootcamp()
    }
}
