//
//  initialiserBootCamp.swift
//  SwiftUIProject1
//
//  Created by Lindokuhle Khumalo on 2025/07/06.
//

import SwiftUI

struct initialiserBootCamp: View {
    
    let backgroundColor: Color
    let count: Int
    var fruit: String
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .orange {
            self.backgroundColor = .orange
            self.fruit = "Oranges"
        } else {
            self.backgroundColor = .red
            self.fruit = "Apples"
        }
    }
    
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        VStack (spacing: 12){
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text("\(fruit)")
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct initialiserBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            initialiserBootCamp(count: 13, fruit: .apple)
            initialiserBootCamp(count: 22, fruit: .orange)
        }
    }
}
