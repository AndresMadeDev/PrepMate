//
//  EventDetailScreen.swift
//  PrepMate
//
//  Created by Andres Made on 4/21/24.
//

import SwiftUI

struct EventDetailScreen: View {
    @Bindable var event: Event
    
    var body: some View {
        VStack {
            
            TextField(event.title, text: $event.title)
                .font(.largeTitle)
                
            HStack {
                DatePicker( "Event Date", selection: $event.dayOfEvent, displayedComponents: .date)
            }
            
            Spacer()
        }
        .padding()
    }
}


