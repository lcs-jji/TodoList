//
//  LandingView.swift
//  TodoList
//
//  Created by Xinchen Ji on 2025-01-28.
//

import SwiftUI

struct LandingView: View {
    
    @State var newItemDescription: String = ""
    @State var searchText = ""
    @State var todos: [TodoItem] = exampleItems
    
    var body: some View {
        NavigationView {
            VStack {
                
                List(todos){ todo in
                    ItemView(currentItem: todo)
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
            .navigationTitle("To Do")
        }
    }
    
    func createToDo(withTitle title: String) {
        
        let todo = TodoItem(
            title: title,
            done: false
        )
        
        todos.append(todo)
        
    }
}


#Preview {
    LandingView()
}
