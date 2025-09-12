//
//  ListBootcamp.swift
//  SwiftUIProject1
//
//  Created by Lindokuhle Khumalo on 2025/07/26.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var mercedes = ["W123", "W126", "W201", "W124"]
    @State var bMW = ["1 Series", "2 Series", "3 Series", "4 Series"]
    
    var body: some View {
        NavigationStack {
            List {
                Section(header:
                            HStack {
                    Text("Mercedes-Benz")
                    Image(systemName: "car.fill")
                        
                }.foregroundColor(.red)) {
                    
                    ForEach(mercedes, id: \.self) { benz in
                        Text(benz.capitalized)
                    }
                    .onDelete(perform: removeFruit)
                    .onMove(perform: moveFruit)
                }
                
                Section(header:
                            HStack {
                    Text("BMW")
                    Image(systemName: "car")
                        
                }.foregroundColor(.black) ) {
                    
                    ForEach(bMW, id: \.self) { series in
                        Text(series.capitalized)
                    }
                }
            }
            .listStyle(GroupedListStyle())
            .scrollContentBackground(.hidden)
            .navigationTitle("German Machines")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                        EditButton()
                        .foregroundColor(.orange)
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    addButton
                        .foregroundColor(.orange)
                }
            }
        }
    }
    
    var addButton: some View {
        Button("Add") {
            addFruit()
        }
    }
    
    func removeFruit(indexSet: IndexSet) {
        mercedes.remove(atOffsets: indexSet)
        }
    
    func moveFruit(indicies: IndexSet, newOffset: Int) {
        mercedes.move(fromOffsets: indicies, toOffset: newOffset)
    }
    
    func addFruit() {
        mercedes.append("W140")
    }
}


struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}
