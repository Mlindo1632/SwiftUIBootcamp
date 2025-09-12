//
//  SheetsBootcamp.swift
//  SwiftUIProject1
//
//  Created by Lindokuhle Khumalo on 2025/07/22.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    // A sheet/fullScreenCover is a transition from one screen to another. Is a POP-UP and then you get your second screen. More like a MODAL presentation. No conditional logic in sheets. Either can only be used once in a view. .fullScreenCover cannot be dragged down or up
    
    @State var showSheet = false

    var body: some View {

        ZStack {
            Color.green
                .ignoresSafeArea(.all)
            
            Button {
                showSheet.toggle()
            } label: {
                Text("Click Me")
                    .foregroundColor(.green)
                    .font(.largeTitle)
                    .padding(20)
                    .background(Color.white.cornerRadius(14))
            }
//            .sheet(isPresented: $showSheet) {
//               SecondScreen()
            // DO NOT ADD CONDITIONAL LOGIC
//            }
            .fullScreenCover(isPresented: $showSheet) {
                SecondScreen()
            }
        }
    }
}

struct SecondScreen: View {
    
    @Environment (\.dismiss) var dismiss // creating a dismiss()

    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .ignoresSafeArea(.all)
            
            VStack {
                Button {
                    dismiss() // Using the dismiss
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(.white)
                        .padding(20)
                        .font(.largeTitle)
                }
            }
        }
    }
}


struct SheetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        // SheetsBootcamp()
        SecondScreen()
    }
}
