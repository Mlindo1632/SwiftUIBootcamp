//
//  UIViewRepresentableBootcamp2.swift
//  SwiftUIBootcamp
//
//  Created by Nhlanhla Kubayi on 2026/02/11.
//

import SwiftUI

struct UIViewRepresentableBootcamp2: View {
    @State private var text: String = ""
    
    var body: some View {
        Text(text)
        HStack {
            Text("SwiftUI")
            TextField("Type here...", text: $text)
                .frame(height: 55)
                .background(Color.pink)
        }
        
        HStack {
            Text("UI Kit")
            UITextFieldViewRepresentable(text: $text)
                .updatePlaceholder("New Placeholder")
                .frame(height: 55)
                .background(Color.pink)
        }
    }
}

struct UITextFieldViewRepresentable: UIViewRepresentable {
    
    @Binding var text: String
    var placeholder : String
    let placeholderColor: UIColor
    
    init(text: Binding<String>, placeholder: String = "Default Placeholder...", placeholderColor: UIColor = .red) {
        self._text = text
        self.placeholder = placeholder
        self.placeholderColor = placeholderColor
    }
    
    func makeUIView(context: Context) -> UITextField {
        let textField = getTextField()
        textField.delegate = context.coordinator
        return textField
    }
    
    // From SwiftUI to UI Kit
    func updateUIView(_ uiView: UITextField, context: Context) {
        uiView.text = text
    }
    
    private func getTextField() -> UITextField {
        let textField = UITextField(frame: .zero)
        
        let placeholder = NSAttributedString(string: placeholder,
                                             attributes: [
                                                .foregroundColor : placeholderColor
                                             ])
        textField.attributedPlaceholder = placeholder
        return textField
    }
    
    func updatePlaceholder(_ text: String) -> UITextFieldViewRepresentable {
        var viewRepresentable = self
        viewRepresentable.placeholder = text
        return viewRepresentable
    }
    
    // Used to send UI Kit to SwiftUI
    func makeCoordinator() -> Coordinator {
        return Coordinator(text: $text)
    }
    
    class Coordinator: NSObject, UITextFieldDelegate {
        
        @Binding var text: String
        
        init(text: Binding <String>) {
            self._text = text
        }
        
        func textFieldDidChangeSelection(_ textField: UITextField) {
            text = textField.text ?? ""
        }
    }
}

struct UIViewRepresentableBootcamp2_Previews: PreviewProvider {
    static var previews: some View {
        UIViewRepresentableBootcamp2()
    }
}
