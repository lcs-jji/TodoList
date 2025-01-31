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
                        
                    }
                    .font(.caption)
                }
                .padding(20)
            }
            .navigationTitle("To Do")
        }
    }
}


#Preview {
    LandingView()
}
