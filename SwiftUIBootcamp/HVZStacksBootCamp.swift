//
//  HVZStacksBootCamp.swift
//  SwiftUIProject1
//
//  Created by Lindokuhle Khumalo on 2025/07/05.
//

import SwiftUI

struct HVZStacksBootCamp: View {
    // VStack -> Vertical stack(Top to Bottom)
    // HStack -> Horizontal stack (Left to right)
    // ZStack -> zIndex (back to front), it layers things from back to front, last item will be infront
    var body: some View {
        /*HV*/ ZStack(alignment: .bottomTrailing) { /* Multiple alignment methods, no spacing cause items are infront/ behind of each other*/
            //        VStack(alignment: .leading /*.trailing .center*/,spacing: 0 or nil(8)
            //        HStack(alignment: .top  .bottom .center, spacing: 19 or nil (8)
            Rectangle()
                .fill(Color.red)
                .frame(width: 140, height: 140)
            
            
            Rectangle()
                .fill(Color.blue)
            
                .frame(width: 120, height: 120)
            Rectangle()
                .fill(Color.brown)
                .frame(width: 100, height: 100)
        }
        
        // Real world example
        
        ZStack(alignment: .top) {
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 350, height: 500, alignment: .center)
            VStack (alignment: .leading, spacing: 30) {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 150, height: 150)
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 100, height: 100)
                
                HStack(alignment: .bottom) {
                    Rectangle()
                        .fill(Color.purple)
                        .frame(width: 50, height: 50)
                    Rectangle()
                        .fill(Color.pink)
                        .frame(width: 75, height: 75)
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 25, height: 25)
                }
                .background(Color.white)
            }
            .background(Color.black)
        }
        
        //Real world example
        
        VStack(alignment: .center) {
            Text("Items in your cart:")
                .font(.caption)
                .underline()
            Text("5")
                .font(.largeTitle)
                .foregroundColor(.gray)
        }
        
        // Another example
        
        VStack(spacing: 50) {
            
            ZStack {
                Circle()
                frame(width: 100, height: 100)
                
                Text("1")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            Text("1")
                .font(.title)
                .foregroundColor(.white)
                .background(
                    Circle()
                        .frame(width: 100, height: 100)
                )
        } // If there an object with 1,2,3 layers you want add behind or infront (Backgrounds and Overlays are preferred)... But for super complex layers, use a ZStack
        
    }
}


struct HVZStacksBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        HVZStacksBootCamp()
    }
}
