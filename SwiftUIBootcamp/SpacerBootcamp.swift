//
//  SpacerBootcamp.swift
//  SwiftUIProject1
//
//  Created by Lindokuhle Khumalo on 2025/07/06.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        
        // A spacer creates an adaptive view with no content that expands as much as it can. For example, when placed within an HStack, a spacer expands horizontally as much as the stack allows, moving sibling views out of the way, within the limits of the stack’s size. SwiftUI sizes a stack that doesn’t contain a spacer up to the combined ideal widths of the content of the stack’s child views. Default spaer length is 10 but can be customised
        
        HStack(spacing: nil) {
            
            Spacer()
            
            Rectangle()
                .fill(Color.black)
                .frame(width: 100, height: 100)
            
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
            
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle()
                .fill(Color.cyan)
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle()
                .fill(Color.purple)
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
                
        }
        .padding(.horizontal, 100)
        .background(Color.clear)
    }
}

struct SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}
