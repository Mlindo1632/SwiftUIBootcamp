//
//  ToggleBootcamp.swift
//  SwiftUIProject1
//
//  Created by Lindokuhle Khumalo on 2025/08/04.
//

import SwiftUI

struct ToggleBootcamp: View {
    
    @State var toggleIsOn = false
    var body: some View {
        NavigationStack {
            Form {
                Toggle("Wi-Fi", isOn: $toggleIsOn)
                // later version of Swift Toggle("Wi-Fi", systemImage: "wifi", isOn: $toggleIsOn)
                    .tint(.purple) // Color the toggle
                
                Toggle("Bluetooth", isOn: $toggleIsOn)
                    .tint(.orange)
                
                Toggle("Wi-Fi", isOn: $toggleIsOn)
                    .tint(.black)
                    .toggleStyle(.button)
                    .labelStyle(.iconOnly)
            }
            .navigationTitle("Toggle")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ToggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootcamp()
    }
}
