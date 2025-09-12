//
//  EctractingFunctionBootcamp.swift
//  SwiftUIProject1
//
//  Created by Lindokuhle Khumalo on 2025/07/11.
//

import SwiftUI
import StoreKit



struct EctractingFunctionBootcamp: View {
    
    @State var backgroundColor: Color = Color.purple
    
    var body: some View {
    
        ZStack {
            backgroundColor
            
            // Content
            contentLayer
        }
    }
    
    var contentLayer: some View {
       
        VStack {
            Text("Title")
                .font(.largeTitle)
            
            Button(action: {
                buttonPressed()
            }, label: {
                Text("PRESS ME")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            })
        }
            
    }
    
    func buttonPressed() {
        backgroundColor = .green
    }
}

struct EctractingFunctionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        EctractingFunctionBootcamp()
    }
}
