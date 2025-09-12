//
//  TogglesContinued.swift
//  SwiftUIProject1
//
//  Created by Lindokuhle Khumalo on 2025/08/04.
//

import SwiftUI

struct TogglesContinued: View {
    @State var toggleIsOn = false
    var body: some View {
        NavigationStack {
            HStack {
                Toggle("Change Status", isOn: $toggleIsOn)
                    .tint(.pink)
                
            }
            .padding(.horizontal, 80)
            Spacer()
            .navigationTitle(toggleIsOn ? "Online" : "Offline")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct TogglesContinued_Previews: PreviewProvider {
    static var previews: some View {
        TogglesContinued()
    }
}
