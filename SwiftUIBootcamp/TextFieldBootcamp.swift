//
//  TextFieldBootcamp.swift
//  SwiftUIProject1
//
//  Created by Lindokuhle Khumalo on 2025/08/03.
//

import SwiftUI

struct TextFieldBootcamp: View {
    
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        NavigationStack {
            VStack {
                TextField("Type something here...", text: $textFieldText)
                //.textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .font(.headline)
                
                Button {
                     
                    
                } label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .disabled(textFieldText.trimmingCharacters(in: .whitespaces).isEmpty)
                        .cornerRadius(10)
                        .font(.headline)
                        .foregroundColor(.white)
                        .background(
                            textFieldText.trimmingCharacters(in: .whitespacesAndNewlines) .isEmpty ? Color.gray : Color.blue
                        )
                }
                
                
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                Spacer()
            }
            .padding()
            .navigationTitle("TextField Bootcamp")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    func textIsAppropriate() -> Bool {
        // check text
        if !textFieldText.contains("@lindo") || textFieldText.count < 4 {
            return false
        }
        return true
    }
    
    func saveText() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}

struct TextFieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldBootcamp()
    }
}
