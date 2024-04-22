//
//  Todo.swift
//  PrepMate
//
//  Created by Andres Made on 4/21/24.
//

import Foundation

class Todo {
    var title: String = ""
    var detail: String = ""
    var completed: Bool = false
    var event: Event?
    
    init(title: String, detail: String, completed: Bool) {
        self.title = title
        self.detail = detail
        self.completed = completed
    }
}
