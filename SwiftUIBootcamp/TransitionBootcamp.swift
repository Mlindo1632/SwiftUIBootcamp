//
//  TransitionBootcamp.swift
//  SwiftUIProject1
//
//  Created by Lindokuhle Khumalo on 2025/07/22.
//

import SwiftUI

struct TransitionBootcamp: View {
    // If we are trying to animate something comming into the screen use TRANSITIONS but if it is already there, just use animations
    //with Transitions, we can modigy something when it is still comming on to th screen
    
    @State var showView = false
    var body: some View {
        ZStack(alignment: .bottom) {
            
            VStack {
                Button("Click Me") {
                    showView.toggle()
                }
                Spacer()
            }
            
            RoundedRectangle(cornerRadius: 30.0)
                .frame(height: UIScreen.main.bounds.height * 0.5)
                //.transition(.slide)
                // or.transition(.move(edge: .bottom))
               // or .transition(AnyTransition.opacity.animation(.easeInOut))
               // or .transition(AnyTransition.scale.animation(.easeInOut))
                .transition(.asymmetric(
                    insertion: .move(edge: .leading) ,
                    removal: .move(edge: .trailing)
                                       ))
                .animation(.easeInOut)
               // or .animation(.spring())
            
                .ignoresSafeArea(edges: .bottom)
        }
    }
}

struct TransitionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBootcamp()
    }
}
