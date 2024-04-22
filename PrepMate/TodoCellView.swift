//
//  TodoCellView.swift
//  PrepMate
//
//  Created by Andres Made on 4/21/24.
//

import SwiftUI

struct TodoCellView: View {
    @Bindable var todo: Todo
    var body: some View {
        HStack {
            if !todo.title.isEmpty{
                // TODO: Delay complete function
                if todo.completed == false {
                    Button("", systemImage: "circle") {
                        todo.completed.toggle()
                    }
                } else {
                    Button("", systemImage: "circle.fill") {
                        todo.completed.toggle()
                    }
                    .tint(.red)
                }
            }
            VStack {
                TextField("Title", text: $todo.title)
                    
                TextField("Detail", text: $todo.detail)
            }
        }
    }
}


