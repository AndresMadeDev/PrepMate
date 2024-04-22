//
//  EventDetailScreen.swift
//  PrepMate
//
//  Created by Andres Made on 4/21/24.
//

import SwiftUI

struct EventDetailScreen: View {
    @Environment(\.modelContext) var modelContext
    @Bindable var event: Event
    
    var body: some View {
        VStack {
            
            TextField(event.title, text: $event.title)
                .font(.largeTitle)
                .bold()
                .foregroundStyle(event.hexColor)
            
                
            HStack {
                DatePicker( "Event Date", selection: $event.dayOfEvent, displayedComponents: .date)
            }
            
            List {
                ForEach(event.todo ?? []) { todo in
                    if todo.completed == false {
                        TodoCellView(todo: todo)
                            .swipeActions {
                                Button("Delete") {
                                   //TODO: Delete todo funcion
                                }
                                .tint(.red)
                            }
                    }
                }
            }
            .listStyle(.plain)
            
            Spacer()
            
            HStack {
                Spacer()
                Button(action: { creatTodo() }, label: {
                    Label("New Todo", systemImage: "plus.circle.fill")
                })
                .buttonStyle(.borderedProminent)
                .tint(event.hexColor)
            }
        }
        .padding()
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Menu("Menu", systemImage: "list.bullet.circle") {
                    Button("Delete event") {
                        //TODO: Delete event funcion
                    }
                    .tint(.red)
                }
            }
        }
    }
    
    func creatTodo() {
        let newTodo = Todo(title: "", detail: "", completed: false)
        event.todo?.append(newTodo)
    }
}


