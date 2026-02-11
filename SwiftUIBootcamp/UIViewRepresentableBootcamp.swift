//
//  UIViewRepresentableBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Lindokuhle Khumalo on 2026/02/11.
//

import SwiftUI

// UIViewRepresentable is used to convert a UIView to SwiftUI
struct UIViewRepresentableBootcamp: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
            BasicUIViewRepresentable()
        }
    }
}

struct UIViewRepresentableBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        UIViewRepresentableBootcamp()
    }
}

struct BasicUIViewRepresentable: UIViewRepresentable {
    
    func makeUIView(context: Context) -> some UIView {
        let view = UIView()
        view.backgroundColor = .purple
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        <#code#>
    }
}
