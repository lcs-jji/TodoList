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
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    
                    Label(
                        title: {
                            Text("Study for chemistry quiz")
                        },
                        icon: {
                            Image(systemName: "circle")
                        }
                    )
                    
                    Label(
                        title: {
                            Text("Finish computer science assignment")
                        },
                        icon: {
                            Image(systemName: "circle")
                        }
                    )
                    
                    Label(
                        title: {
                            Text("Go for a run around campus")
                        },
                        icon: {
                            Image(systemName: "circle")
                        }
                    )
                    
                }
                .searchable(text: $searchText)
                
                HStack {
                    
                    TextField("Enter a to-do item", text: $newItemDescription)
                    Button("Add") {
                        
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
