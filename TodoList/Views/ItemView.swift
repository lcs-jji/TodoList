//
//  ItemView.swift
//  TodoList
//
//  Created by Xinchen Ji on 2025-01-28.
//

import SwiftUI

struct ItemView: View {
    
    @Binding var currentItem: TodoItem
    
    var body: some View {
        Label(
            title: {
                Text(currentItem.title)
            },
            icon: {
                Image(systemName: currentItem.done == true ? "checkmark.circle" : "circle")
                    .onTapGesture {
                        currentItem.done.toggle()
                    }
            }
        )
    }
}

#Preview {
    List {
        ItemView(currentItem: Binding.constant(firstItem))
        ItemView(currentItem: Binding.constant(secondItem))
    }
}
