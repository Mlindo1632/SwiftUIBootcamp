//
//  GridBootcamp.swift
//  SwiftUIProject1
//
//  Created by Lindokuhle Khumalo on 2025/07/07.
//

import SwiftUI

struct GridBootcamp: View {
    
    // Use a lazy vertical grid when you want to display a large, vertically scrollable collection of views arranged in a two dimensional layout. The first view that you provide to the grid’s content closure appears in the top row of the column that’s on the grid’s leading edge. Additional views occupy successive cells in the grid, filling the first row from leading to trailing edges, then the second row, and so on. The number of rows can grow unbounded, but you specify the number of columns by providing a corresponding number of GridItem instances to the grid’s initializer. // Flexible allows the Grid to adjust itself and fit perfectly. Fixed and Flexible
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil)
    ]
    
    // Instagram Real world example
    
    var body: some View {
        ScrollView {
            
            Rectangle()
                .fill(Color.white)
                .frame(height: 400)
            
            LazyVGrid(columns: columns) {
                ForEach(0..<50) { index in
                    Rectangle()
                        .frame(height: 150)
                }
            }
        }
        
        //Advance tips
        
        ScrollView {
            
            LazyVGrid(columns: columns,
                      alignment: .center,
                      spacing: 6,
                      pinnedViews: [.sectionHeaders],
                      content: {
                Section(header:
                            Text("Section 1")
                    .background(Color.blue)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                        
                ) {
                    ForEach(0..<20) { index in
                        Rectangle()
                            .frame(height: 150)
                    }
                }
            })
            
            Section(header:
                        Text("Section 2")
                .background(Color.red)
                .font(.title)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                    
            ) {
                ForEach(0..<20) { index in
                    Rectangle()
                        .fill(.green
                        )
                        .frame(height: 150)
                }
            }
        }
    }
    
}

struct GridBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBootcamp()
    }
}
