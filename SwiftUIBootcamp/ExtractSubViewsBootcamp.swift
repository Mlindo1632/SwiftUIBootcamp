//
//  ExtractSubViewsBootcamp.swift
//  SwiftUIProject1
//
//  Created by Lindokuhle Khumalo on 2025/07/11.
//

import SwiftUI

struct ExtractSubViewsBootcamp: View {
    
    // Extracting the SubView is great when the content is dynamic thar is going to change i.e MyItem
    // If it will change put it in a variable like -> var contentSection
    
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea(.all)
            
            ExtractedSubViewMyItem(title: "Apple", count: 3, backgroundColor: .red)
        }
    }
    
    var contentSection: some View {
        HStack {
            ExtractedSubViewMyItem(title: "Apple", count: 3, backgroundColor: .red)
            ExtractedSubViewMyItem(title: "Grapes", count: 34, backgroundColor: .purple)
            ExtractedSubViewMyItem(title: "Bananas", count: 64, backgroundColor: .yellow)
        }
    }
}

struct ExtractSubViewsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubViewsBootcamp()
    }
}

struct ExtractedSubViewMyItem: View {
    var title: String
    var count: Int
    var backgroundColor: Color
    
    var body: some View {
            VStack {
                Text("\(title)")
                Text("\(count)")
            }
            .padding()
            .background(backgroundColor)
            .cornerRadius(10)
        }
    }

