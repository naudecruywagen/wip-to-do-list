//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Naudé Cruywagen on 2025/05/18.
//

import SwiftUI

@main
struct ToDoListApp: App {
    @StateObject private var store = TaskStore()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(store)
        }
    }
}
