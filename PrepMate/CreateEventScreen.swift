//
//  CreateEventScreen.swift
//  PrepMate
//
//  Created by Andres Made on 4/21/24.
//

import SwiftUI

struct CreateEventScreen: View {
    @State private var name: String = ""
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
            
            ColorPicker("Event Color", selection: $color)
                .font(.title)
            
            
        }
        .navigationTitle("New Event")
        .navigationBarTitleDisplayMode(.inline)
      
        
    }
}

#Preview {
    NavigationStack {
        CreateEventScreen()
    }
}
