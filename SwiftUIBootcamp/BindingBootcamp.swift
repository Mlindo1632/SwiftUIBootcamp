//
//  BindingBootcamp.swift
//  SwiftUIProject1
//
//  Created by Lindokuhle Khumalo on 2025/07/13.
//

import SwiftUI

// Use a binding to create a two-way connection between a property that stores data, and a view that displays and changes the data. A binding connects a property to a source of truth stored elsewhere, instead of storing data directly. @Binding connects @State from multiple views

struct BindingBootcamp: View {
    
    @State var backgroundColor = Color.green
    @State var title = "Title"
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack {
                Text(title)
                    .foregroundColor(.white)
                ButtonView(backgroundColor: $backgroundColor, title: $title)
                
            }
        }
    }
}

struct ButtonView: View {
    
    @Binding var backgroundColor: Color
    @Binding var title: String
    @State var buttonColor: Color = .blue
    
    
    var body: some View {
                
                Button(action: {
                    backgroundColor = .orange
                    buttonColor = Color.pink
                    title = "Mr Khumalo"
                }, label: {
                    Text("Button")
                        .foregroundColor(.white)
                        .padding()
                        .padding(.horizontal)
                        .background(buttonColor)
                        .cornerRadius(10)
                    
                })
            }
        }

struct BindingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootcamp()
    }
}
