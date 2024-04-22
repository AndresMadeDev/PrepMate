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
        VStack {
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
                
            }
            
            Text(event.dayOfEvent.formatted(.dateTime.month().day()))
                
        }
        .padding()
        .background(.regularMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}


