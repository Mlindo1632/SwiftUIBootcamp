//
//  IconsBootCamp.swift
//  SwiftUIProject1
//
//  Created by Lindokuhle Khumalo on 2025/07/02.
//

import SwiftUI

struct IconsBootCamp: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus") // will get from the SF Symbols app
            .renderingMode(.original)
            .resizable() // Adjusts the Image according to the frame
            .aspectRatio(contentMode: .fit) // resizes so that it fits exactly inside the frame
            .scaledToFit() // does the same as above
            //.font(.largeTitle) //system sizes update automatically
            //.font(.system(size: 200)) // for fixed size
            .foregroundColor(Color.yellow)
            .frame(width: 400, height: 350)
           // .clipped() // works with scaleToFit or Fill
    }
}

struct IconsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootCamp()
    }
}
