//
//  ContextMenuBootcamp.swift
//  SwiftUIProject1
//
//  Created by Lindokuhle Khumalo on 2025/08/03.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    var body: some View {
        VStack {
            Text("Hello, World")
                .foregroundColor(.white)
                .padding(6)
                .background {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.blue)
                }
                .contentShape(.contextMenuPreview, RoundedRectangle(cornerRadius: 25))
                .contextMenu {
                    showActionSheet()
                }
        }
        .padding()
    }
    
    @ViewBuilder
    
    func showActionSheet() -> some View {
        Button {
            print(">>> Like")
        } label: {
            Label("Like", systemImage: "person.fill")
        }
        
        Button(role: .cancel) {
            print(">>> Love")
        } label: {
            Label("Love", systemImage: "heart.fill")
        }
        
        Divider()
        
        Button(role: .destructive) {
            print(">>> Remove")
        } label: {
            Label("Remove", systemImage: "xmark")
        }
    }
}

struct ContextMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootcamp()
    }
}
