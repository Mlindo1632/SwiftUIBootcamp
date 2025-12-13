//
//  ViewModelBootcamp.swift
//  SwiftUIProject1
//
//  Created by Lindokuhle Khumalo on 2025/08/06.
//

import SwiftUI

// @Published enables automatic updates when a UI updates when data changes. Allows us to create observable objects that automatically announce when changes occur for a CLASS

// @ObservedObject this tell the View to lookout for ViewModel changes in this case, OG ViewModel has to conform to the ObservabledObject to be seen/lookable/OBSERVED. The only downside to ObserveredObject is that if the View reloads, refreshed, recreated, maybe there is animation or something else that causes the View to reload, The OservedObject would also reload causing issues.

// We want the data to persist even if the View reloads. We can use the @STATEOBJECT is the same as the OservedObject but will always persist, it will not refresh

// @ObservedObject -> USE THIS FOR SUBVIES
// @StateObject -> USE THIS ON CREATION/ INIT

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

class FruitViewModel: ObservableObject {
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading = false
    
    func getFruits() {
        let fruit1 = FruitModel(name: "Orange", count: 1)
        let fruit2 = FruitModel(name: "Banana", count: 2)
        let fruit3 = FruitModel(name: "Watermelon", count: 88)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
            
        }
    }
    
    func deleteFruit(indexSet: IndexSet) {
        fruitArray.remove(atOffsets: indexSet)
    }
    
    func moveFruits(from: IndexSet, to: Int)   {
        fruitArray.move(fromOffsets: from, toOffset: to)
    }
}
    
struct ViewModelBootcamp: View {
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack {
                            Text("\(fruit.name)")
                                .foregroundColor(.red)
                            Text("\(fruit.count)")
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                    .onMove(perform: fruitViewModel.moveFruits)
                }
            }
            .listStyle(.grouped)
            .navigationTitle("Fruit List")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: RandomScreen(fruitViewModel: fruitViewModel)) {
                        Image(systemName: "arrow.right")
                            .font(.title)
                    }
                }
            }
        }
        .onAppear {
            fruitViewModel.getFruits()
        }
    }
}

   struct RandomScreen: View {
        
        @ObservedObject var fruitViewModel: FruitViewModel
        @Environment (\.dismiss) var dismiss
        
        var body: some View {
            ZStack {
                Color.green.ignoresSafeArea(.all)
                
                VStack {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        Text(fruit.name)
                            .foregroundColor(.white)
                            .font(.headline)
                    }
                }
            }
        }
    }

struct ViewModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelBootcamp()
    }
}
