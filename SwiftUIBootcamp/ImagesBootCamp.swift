//
//  ImagesBootCamp.swift
//  SwiftUIProject1
//
//  Created by Lindokuhle Khumalo on 2025/07/03.
//

import SwiftUI

struct ImagesBootCamp: View {
    var body: some View {
        Image("190E-EVO-II-main")
            .renderingMode(.template) // renders the color on the non transparent pixles, can also be done via inspector in Assets where image is stored
            .resizable()
           // .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 200)
            .foregroundColor(.red)
           // .clipped() // if using .fit on aspect we don't need, cliped()
            //.cornerRadius(30) // used to round the corner edges
           // .clipShape(
                //Circle()
                //RoundedRectangle(cornerRadius: 14.0)
                //Ellipse()
            //)
        
    }
}

struct ImagesBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ImagesBootCamp()
    }
}
