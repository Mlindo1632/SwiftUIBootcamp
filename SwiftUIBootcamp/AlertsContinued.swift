//
//  AlertsContinued.swift
//  SwiftUIProject1
//
//  Created by Lindokuhle Khumalo on 2025/07/31.
//

import SwiftUI

struct AlertsContinued: View {
    
    @State var isShowingAlert = false
    @State var alertType: MyAlerts? = nil
    @State var backgroundColor = Color.purple
    
    
    enum MyAlerts {
        case success
        case failure
    }
    var body: some View {
        
        ZStack(alignment: .topLeading) {
            Color.pink.ignoresSafeArea(.all)
            VStack {
                Button("Click Me") {
                    alertType = .failure
                    isShowingAlert.toggle()
                }
                
                Button("Click Me") {
                    alertType = .success
                    isShowingAlert.toggle()
                }
            }
            .alert(isPresented: $isShowingAlert) {
                showAlert()
            }
        }
    }
    
    func showAlert() -> Alert {
        switch alertType {
        case .failure:
            return Alert(title: Text("There was an error"))
        case .success:
            return Alert(title: Text("This was a success"), message: nil, dismissButton: .default(Text("OK")) {
                backgroundColor = .orange
            })
        default:
            return Alert(title: Text("ERROR"))
        }
    }
}
    


struct AlertsContinued_Previews: PreviewProvider {
    static var previews: some View {
        AlertsContinued()
    }
}
