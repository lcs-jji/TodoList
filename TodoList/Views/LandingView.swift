//
//  LandingView.swift
//  TodoList
//
//  Created by Xinchen Ji on 2025-01-28.
//

import SwiftUI
import SwiftData

struct LandingView: View {
    
    @State var newItemDescription: String = ""
    @State var searchText = ""
    @Environment(\.modelContext) var modelContext
    @Query var todos: [TodoItem]
    
    var body: some View {
        NavigationView {
            VStack {
                
                List {
                    ForEach(todos) { todo in
                        
                        ItemView(currentItem: todo)
                 
                    }
                    .onDelete(perform: removeRows)
                }
                .searchable(text: $searchText)
                
                HStack {
                    
                    TextField("Enter a to-do item", text: $newItemDescription)
                    Button("ADD") {
                        createToDo(withTitle: newItemDescription)
                    }
                    .font(.caption)
                    .disabled(newItemDescription.isEmpty == true)
                }
                .padding(20)
            }
            .navigationTitle("To Do List")
            .onAppear{
                printCommandToOpenDatabaseFile()
            }
        }
    }
    
    func createToDo(withTitle title: String) {
        
        let todo = TodoItem(
            title: title,
            done: false
        )
        
        // Use the model context to insert the new to-do
        modelContext.insert(todo)
        
    }
    
    func removeRows(at offsets: IndexSet) {
        
        // Accept the offset within the list
        // (the position of the item being deleted)
        //
        // Then ask the model context to delete this
        // for us, from the 'todos' array
        for offset in offsets {
            modelContext.delete(todos[offset])
        }
    }
}


#Preview {
    LandingView()
        .modelContainer(TodoItem.preview)
}
