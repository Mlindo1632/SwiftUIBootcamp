//
//  ReusableToolViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Nhlanhla Kubayi on 2025/11/03.
//

import SwiftUI

struct ReusableToolViewBootcamp: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
                .font(.title2)
                .padding()
        }
        .navigationTitle("earth".uppercased())
        .toolbar {
            toolbarContent
        }
    }
}

@ToolbarContentBuilder
private var toolbarContent: some ToolbarContent {
    ToolbarItem(placement: .navigationBarTrailing) {
        Button("Back") {
            print("Screen 1 Initialised")
        }
        .frame(width: 250, height: 100)
        .buttonStyle(.bordered)
        .foregroundColor(.clear)
    }
    
    ToolbarItem(placement: .navigationBarTrailing) {
        Button("NEXT") {
            print("Screen 2 Initialised")
        }
        .frame(width: 250, height: 100)
        .buttonStyle(.bordered)
        .foregroundColor(.clear)
    }
}

struct ReusableToolViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ReusableToolViewBootcamp()
    }
}
