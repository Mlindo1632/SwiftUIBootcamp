//
//  ActionSheetsBootcamp.swift
//  SwiftUIProject1
//
//  Created by Lindokuhle Khumalo on 2025/07/31.
//

import SwiftUI

struct ActionSheetsBootcamp: View {
    @State private var isActionSheetShown = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Welcome to your profile!")
                    .font(.title)
                    .padding()
            }
            .navigationTitle("Profile information")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        isActionSheetShown.toggle()
                    } label: {
                        Image(systemName: "person.fill")
                            .font(.title)
                    }
                    .confirmationDialog("Change profile picture",
                                        isPresented: $isActionSheetShown,
                                        titleVisibility: .visible) {
                        showActionSheet()
                    } message: {
                        Text("Additional information")
                    }
                }
            }
        }
    }
    
    @ViewBuilder
    
    func showActionSheet() -> some View {
        Button("Change profile picture") {
            print("Changed profile picture")
        }
        Button("Edit information") {
            print("Information edited")
        }
        Button("Log out", role: .destructive) {
            print("User has been logged out")
        }
    }
}
  
struct ActionSheetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetsBootcamp()
    }
}
