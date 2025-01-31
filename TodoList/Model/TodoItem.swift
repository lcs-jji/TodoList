//
//  TodoItem.swift
//  TodoList
//
//  Created by Xinchen Ji on 2025-01-28.
//

import Foundation

struct TodoItem: Identifiable {
    let id = UUID()
    var title: String
    var done: Bool
}

let firstItem = TodoItem(title: "Study for chem quiz", done: false)

let secondItem = TodoItem(title: "Finish comp sci assignment", done: true)

let thirdItem = TodoItem(title: "Go for a run around campus", done: false)


let exampleItems = [
    
    firstItem
    ,
    secondItem
    ,
    thirdItem
    ,
    
]
