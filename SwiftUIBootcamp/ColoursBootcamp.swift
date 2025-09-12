//
//  ColoursBootcamp.swift
//  SwiftUIProject1
//
//  Created by Lindokuhle Khumalo on 2025/07/02.
//

import SwiftUI

struct ColoursBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 40.0)
            .fill(
                //Color.primary
               // Color(UIColor.secondarySystemBackground)
                Color("CustomColor") // Colors are in Assets
            )
            .frame(width: 300, height: 505)
            //.shadow(radius: 10)
            .shadow(color: Color.red.opacity(0.3), radius: 10, x: 0, y: -16)
    }
}

struct ColoursBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColoursBootcamp()
            .preferredColorScheme(.dark)
    }
}
