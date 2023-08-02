//
//  ToDoItem.swift
//  MoodToDoApp
//
//  Created by Tugs Oyun Enkh Amgalan on 8/2/23.
//

import Foundation

class ToDoItem: Identifiable {
    var title: String
    var isImportant: Bool
    var id = UUID()
    
    init(title: String, isImportant: Bool = false) {
        self.title = title
        self.isImportant = isImportant
    }
}
