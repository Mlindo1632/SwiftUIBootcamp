//
//  NavigationViewBootcamp.swift
//  SwiftUIProject1
//
//  Created by Lindokuhle Khumalo on 2025/07/25.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                
                NavigationLink("Hello, World",
                               destination: ListScreen())
                
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .navigationTitle("All inboxes")
            //.navigationBarTitleDisplayMode(.automatic)
            //.navigationBarHidden(true)
        }
    }
}

struct ListScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Color.red
                .ignoresSafeArea(.all)
            
            VStack {
                Button("BackButton") {
                    dismiss()
                }
                NavigationLink("Next", destination: Text("3rd screen"))
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Image(systemName: "heart.fill")
                        }
                        ToolbarItem(placement: .navigationBarLeading) {
                            Image(systemName: "xmark")
                            
                        }
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button {
                                print("My lord imoteph")
                            } label: {
                                Label("Save", systemImage: "square.and.arrow.down")
                            }
                        }
                        ToolbarItem(placement: .navigationBarTrailing) {
                            NavigationLink(destination: Text("Merd")) {
                                Text("Benz")
                            }
                        }
                    }
            }
        }
    }
}

struct NavigationViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootcamp()
    }
}
