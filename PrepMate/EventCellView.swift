//
//  EventCellView.swift
//  PrepMate
//
//  Created by Andres Made on 4/21/24.
//

import SwiftUI

struct EventCellView: View {
    @Bindable var event: Event
    
    var body: some View {
        VStack(spacing: 10) {
            Text(event.title)
                .font(.title3)
                .lineLimit(1)
                .minimumScaleFactor(0.3)
            HStack {
                Image(systemName: "list.bullet.circle.fill")
                    .foregroundStyle(event.hexColor)
                    .font(.largeTitle)
                Spacer()
                Text("\(event.daysBetween(.now, event.dayOfEvent))")
                        .font(.system(size: 50, weight: .bold, design: .rounded))
                        .foregroundStyle(event.dayOfEvent < Date.now ? .red : .primary)
                
            }
            
            //TODO: Event progress function
            ProgressView(value: 0.25) { Text("25% completed") }
                .tint(event.hexColor)
            
            HStack {
                Spacer()
                Text("Event Date: \(event.dayOfEvent.formatted(.dateTime.month().day()))")
                    .font(.caption)
            }
                
        }
        .padding()
        .background(.regularMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}


