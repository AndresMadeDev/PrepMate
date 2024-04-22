//
//  Event.swift
//  PrepMate
//
//  Created by Andres Made on 4/21/24.
//

import Foundation
import SwiftUI

class Event {
    var title: String = ""
    var eventColor: String = "FF0000"
    var dayOfEvent: Date = Date.distantFuture
    var books: [Todo]?
    
    init(title: String, eventColor: String, dayOfEvent: Date) {
        self.title = title
        self.eventColor = eventColor
        self.dayOfEvent = dayOfEvent
    }
    
    var hexColor: Color {
        Color(hex: self.eventColor) ?? .blue
    }
}
