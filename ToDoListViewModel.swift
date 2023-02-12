//
//  ToDoListViewModel.swift
//  TechTask
//
//  Created by Daniel Yu on 10/22/22.
//

import Foundation

class ToDoListViewModel : ObservableObject {
    @Published var items: [ItemModel] = []
    
    init() {
        getItems()
    }
    
    func getItems() {
        let newItems = [
            ItemModel(title: "Feed Dog", isCompleted: false),
            ItemModel(title: "Do Work", isCompleted: false),
            ItemModel(title: "Read", isCompleted: false),
            ItemModel(title: "Exercise", isCompleted: false)
        ]
        items.append(contentsOf: newItems)
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
        
        func updateItem(item: ItemModel) {
            
            if let index = items.firstIndex(where: { $0.id == item.id}) {
                items[index] = item.updateCompletion()
            }
        }
        
    }

