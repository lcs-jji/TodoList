//
//  ItemView.swift
//  TodoList
//
//  Created by Xinchen Ji on 2025-01-28.
//

import SwiftUI

struct ItemView: View {
    
    let title: String
    let done: Bool
    
    var body: some View {
        Label(
            title: {
                Text(title)
            },
            icon: {
                Image(systemName: done == true ? "checkmark.circle" : "circle")
            }
        )
    }
}

#Preview {
    List {
        ItemView(title: "Have a nap", done: false)
        ItemView(title: "Eat lunch", done: true)
    }
}
