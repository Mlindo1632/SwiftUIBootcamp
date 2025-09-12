//
//  GradientsBootCamp.swift
//  SwiftUIProject1
//
//  Created by Lindokuhle Khumalo on 2025/07/02.
//

import SwiftUI

struct GradientsBootCamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 27.0)
            .fill(
                //Color.red
                LinearGradient(gradient: Gradient(colors: [Color.red, Color.white, Color.green, Color.yellow, Color.black, Color.white, Color.blue]) , // With Gradient, always aim for subtle changes e.g skyblue to  navy blue to midnight black/blue
                                   // There is also Radial which begins in the middle and Angular which focuses on angles
                               startPoint: .top,
                               endPoint: .bottom)
                
                
            )
            .frame(width: 300, height: 200)
        
        RoundedRectangle(cornerRadius: 21.0)
            .fill(
                RadialGradient(colors: [Color.red, Color.pink], center: .center, startRadius: 10.0, endRadius: 10.0)
            )
    }
}

struct GradientsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientsBootCamp()
    }
}
