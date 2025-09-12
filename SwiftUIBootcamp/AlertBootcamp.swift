//
//  AlertBootcamp.swift
//  SwiftUIProject1
//
//  Created by Lindokuhle Khumalo on 2025/07/30.
//

import SwiftUI

struct AlertBootcamp: View {
    
    //Alert can beadded anywhere in the View and will still work
    
    @State private var showAlert = false
    @State private var isShowingEnterValueAlert = false
    @State private var valueString = ""
    @State private var isShowingLoginAlert = false
    @State private var error: MyAppError = .noNetwork
    
    var body: some View {
        VStack(spacing: 14) {
            Button("Fetch Data") {
                showAlert.toggle()
            }
            
            .alert("No Network", isPresented: $showAlert) {
                Button("Try Again") {
                    // Try again logic
                }
                
                Button("Delete",role: .destructive) {
                    // Do delete code
                }
                
                Button("Cancel", role: .cancel) {}
            } message: { // Optional
                Text("No Network detected. Connect to Wi-Fi or cellular and try again")
            }

            
            Button("Enter Data") {
                isShowingEnterValueAlert.toggle()
            }
            .alert("Enter Value", isPresented: $isShowingEnterValueAlert) {
                TextField("Value", text: $valueString)
                
                Button("Submit") {
                    
                }
                
                Button("Cancel", role: .cancel) {
                    
                }
            } message: {
                Text("Enter the rand value of your item")
            }

            Button("Log in") {
                error = .invalidUserName
                isShowingLoginAlert.toggle()
                }
            
            .alert(isPresented: $isShowingLoginAlert, error: error) { error in
                if error == .invalidUserName {
                    TextField("Username", text: $valueString)
                    
                    Button("Submit") {
                        
                    }
                    
                    Button("Cancel", role: .cancel) {
                        
                    }
                }
            } message: { error in
                Text(error.failureReason)
            }
        }
    }
}


struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}

enum MyAppError: LocalizedError {
case invalidUserName
case invalidPassword
case noNetwork
    
    var errorDescription: String? {
        switch self {
        case .invalidUserName:
            return "Invalid Username"
        case .invalidPassword:
           return "Invalid Password"
        case .noNetwork:
           return "No Network Connection"
        }
    }
    
    var failureReason: String {
        switch self {
        case .invalidUserName:
           return "The username that you have entered does not exist in our database"
        case .invalidPassword:
           return "The password you have entered for the username is incorrect"
        case .noNetwork:
           return "No Network detected. Connect to Wi-Fi or cellular and try again"
        }
    }
}

