//
//  TextEditorBootcamp.swift
//  SwiftUIProject1
//
//  Created by Lindokuhle Khumalo on 2025/08/04.
//

import SwiftUI

struct TextEditorBootcamp: View {
    
    @State var startingEditorText = "The brown fox jumps over the lazy do in the village"
    @State var savedText = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                TextEditor(text: $startingEditorText)
                    .frame(height: 250)
                    .colorMultiply(Color.gray)
                    .cornerRadius(10)
                
                Button {
                    savedText = startingEditorText
                } label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                Text(savedText)
                
                Spacer()
            }
            .padding()
            .navigationTitle("TextEditor Bootcamp")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct TextEditorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorBootcamp()
    }
}
