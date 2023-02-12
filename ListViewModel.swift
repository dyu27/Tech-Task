//
//  ListViewModel.swift
//  TechTask
//
//  Created by Daniel Yu on 10/22/22.
//

import Foundation

class ListViewModel : ObservableObject {
    @Published var items: [ItemModel] = []
    
    init() {
        getItems()
    }
     
    func getItems() {
        let newItems = [
            ItemModel(title: "CS 1331", isCompleted: false),
            ItemModel(title: "APPH 1040", isCompleted: false),
            ItemModel(title: "MATH 1552", isCompleted: false),
            ItemModel(title: "ENGL 1102", isCompleted: false),
            ItemModel(title: "CS 1100", isCompleted: false),
        ]
        //items.append(contentsOf: newItems)
        items = newItems
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title: String ) {
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    
}
