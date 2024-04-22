//
//  Event.swift
//  PrepMate
//
//  Created by Andres Made on 4/21/24.
//

import Foundation
import SwiftUI
import SwiftData

@Model
class Event {
    var title: String = ""
    var eventColor: String = "FF0000"
    var dayOfEvent: Date = Date.now
    var todo: [Todo]?
    
    init(title: String, eventColor: String, dayOfEvent: Date) {
        self.title = title
        self.eventColor = eventColor
        self.dayOfEvent = dayOfEvent
    }
    
    var hexColor: Color {
        Color(hex: self.eventColor) ?? .blue
    }
    
    func daysBetween(_ startDate: Date, _ endDate: Date) -> Int {
        let calendar = Calendar.current
        let components = calendar.dateComponents([.day], from: startDate, to: endDate)
        return components.day ?? 0
    }
}
