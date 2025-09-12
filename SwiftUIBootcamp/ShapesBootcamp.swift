//
//  ShapesBootcamp.swift
//  SwiftUIProject1
//
//  Created by Lindokuhle Khumalo on 2025/07/02.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
       //Circle()
       //Ellipse()
       //Capsule(style: .circular)
        RoundedRectangle(cornerRadius: 10)
//            .fill(Color.blue)
//            .foregroundColor(.pink)
//            .stroke()
//            .stroke(Color.red)
//            .stroke(Color.blue, lineWidth: 34)
//            .stroke(Color.red, style: StrokeStyle(lineWidth: 20, lineCap: .butt, dash: [10]))
//            .trim(from: 03, to: 1.0)
//            .stroke(Color.purple, lineWidth: 50)
            .frame(width: 200, height: 100)
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}
