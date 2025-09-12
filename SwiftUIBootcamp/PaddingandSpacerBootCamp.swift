//
//  PaddingandSpacerBootCamp.swift
//  SwiftUIProject1
//
//  Created by Lindokuhle Khumalo on 2025/07/06.
//

import SwiftUI

struct PaddingandSpacerBootCamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.yellow)
            .padding(.all, 17)
            .padding(.leading, 29)
        // adds different padding(space) around a View as it grows or shrinks. Can be specified to any amount but default amount is 10
        // it is used when you want to avoid hard-coding exact frames in our views
            .background(Color.blue)
        
        // Real world use
        Text("Secure Upadating Application")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .frame(maxWidth: .infinity, alignment: .leading)
            //.background(Color.red)
            .padding(.leading)
        
        VStack(alignment: .leading) {
            Text("Show ID")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
            Text("This is the description of what we will don on this screen. Its is multiple lines and we will align the text to the leading edge")
                
                
        }
        .padding()
        .padding(.vertical, 30)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color: Color.blue.opacity(0.3),
                        radius: 10,
                        x: 0.0,
                        y: 10.0)
        )
        .padding(.horizontal, 10)
        
        ZStack {
            Rectangle()
                .fill(.white)
                .frame(width: 100, height: 100, alignment: .center)
            
            Rectangle()
            LinearGradient(colors: [Color.red, Color.blue, Color.pink, Color.purple, Color.brown], startPoint: .topLeading, endPoint: .bottomTrailing)
            frame(width: 110, height: 110)
            
            Text("Hello, World!!!")
        }
    }
}

struct PaddingandSpacerBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingandSpacerBootCamp()
    }
}
