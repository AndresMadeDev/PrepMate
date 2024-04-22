//
//  CreateEventScreen.swift
//  PrepMate
//
//  Created by Andres Made on 4/21/24.
//

import SwiftUI

struct CreateEventScreen: View {
    @Environment(\.dismiss) var dismiss
    @Environment(\.modelContext) var modelContext
    
    @State private var name: String = ""
    @State private var date: Date = .now
    @State private var color: Color = .blue
    
    var body: some View {
        Form {
            Section {
                HStack {
                    Spacer()
                    Image(systemName: "list.bullet.circle.fill")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .foregroundStyle(color)
                    Spacer()
                }
                    
                    TextField("Event Name", text: $name)
                        .font(.largeTitle)
                        .multilineTextAlignment(.center)
                
            }
            Section {
                DatePicker("Event Date", selection: $date, in: date..., displayedComponents: .date)
            }
            
            Section {
               CustomColorPickerView(selectedColor: $color)
                
                ColorPicker(selection: $color, label: {
                    Text("Custom Color")
                })
            }
            
            
        }
        .navigationTitle("New Event")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button("Done") {
                    let newEvent = Event(title: name, eventColor: color.toHexString()!, dayOfEvent: date)
                    modelContext.insert(newEvent)
                    dismiss()
                }
            }
            ToolbarItem(placement: .topBarLeading) {
                Button("Cancel") {
                    dismiss()
                }
            }
        }
      
        
    }
}

#Preview {
    NavigationStack {
        CreateEventScreen()
    }
}
