//
//  TextBootcamp.swift
//  SwiftUIProject1
//
//  Created by Lindokuhle Khumalo on 2025/07/02.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World!".capitalized)
            .font(.title) // These can automatically change when a user increases or decreases the font size on their device
            .fontWeight(.heavy)
            .bold()
            .underline()
            .underline(true, color: Color.green)
            .italic()
            .strikethrough()
        
        Text("How are you doing, This is Swiftful Thinking and I am enjoying this wonderful bootcamp. I am also learning a lot and this will help me in beome an expert iOS developer")
            .foregroundColor(.red)
            .font(.system(size: 24, weight: .semibold, design: .serif))
            .baselineOffset(2.0)
            .kerning(6)
            .multilineTextAlignment(.leading)
            .frame(width: 200, height: 100, alignment: .leading)
            .minimumScaleFactor(0.1)
            
        
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
