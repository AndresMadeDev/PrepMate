//
//  PrepMateApp.swift
//  PrepMate
//
//  Created by Andres Made on 4/21/24.
//

import SwiftUI
import SwiftData

@main
struct PrepMateApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Event.self)
        }
    }
}
