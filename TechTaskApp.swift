//
//  TechTaskApp.swift
//  TechTask
//
//  Created by rishi on 10/22/22.
//

import SwiftUI

@main
struct TechTaskApp: App {
    
    @StateObject var listViewModel : ListViewModel = ListViewModel()
    @StateObject var toDoListViewModel : ToDoListViewModel = ToDoListViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationView {
//                let listViewModel = ListViewModel()
                ContentView()
                    .environmentObject(listViewModel)
                    .environmentObject(toDoListViewModel)
                    
                    
            }
        }
        
    }
}
