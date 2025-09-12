//
//  BackgroundAndOverlaysBootcamp.swift
//  SwiftUIProject1
//
//  Created by Lindokuhle Khumalo on 2025/07/03.
//

import SwiftUI

struct BackgroundAndOverlaysBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/) // Backgrounds go behind
            .frame(width: 100, height: 100, alignment: .center)
            .background(
                //Color.gray
                //                LinearGradient(colors: [Color.red, Color.yellow, Color.blue, Color.black],
                //                               startPoint: .topLeading,
                //                               endPoint: .bottomTrailing)
                Circle()
                    .fill(Color.blue)
            )
            .frame(width: 120, height: 120, alignment: .center)
            .background(
                Circle()
                    .fill(.pink)
            )
        Circle()
            .fill(Color.cyan)
            .frame(width: 100, height: 100, alignment: .center)
            .overlay(// Brings a view to the front
                Text("1632")
                    .font(.largeTitle)
                    .foregroundColor(.white)
            )
            .background(
                Circle()
                    .fill(Color.brown)
                    .frame(width: 120, height: 120)
            )
        Rectangle()
            .frame(width: 100, height: 100)
            .overlay(
                Rectangle()
                    .fill(.green)
                    .frame(width: 100, height: 100)
                , alignment: .center
            )
            .background(
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 150, height: 150)
                , alignment: .center
            )
        
        // Real world example
        
        Image(systemName: "heart.fill")
            .font(.system(size: 30.0))
            .foregroundColor(Color.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(colors: [Color.purple, Color.blue, Color.green],
                                       startPoint: .topTrailing,
                                       endPoint: .bottomLeading)
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: .black, radius: 10, x: 0.0, y: 10.0)
                    .overlay(
                        Circle()
                            .fill(Color.red)
                            .frame(width: 35, height: 35)
                        
                            .overlay(
                                Text("5")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            )
                            
                    )
                    .shadow(color: .black, radius: 10, x: 0.0, y: 5.0)
                , alignment: .bottomTrailing
            )
    }
    
}

struct BackgroundAndOverlaysBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlaysBootcamp()
    }
}
