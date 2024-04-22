//
//  ContentView.swift
//  PrepMate
//
//  Created by Andres Made on 4/21/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Query(sort: \Event.dayOfEvent) var events: [Event]
    @State private var showCreateEvent: Bool = false
    let columns = [
           GridItem(.flexible()),
           GridItem(.flexible())
           ]
    
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(events) { event in
                            NavigationLink {
                                EventDetailScreen(event: event)
                            } label: {
                                EventCellView(event: event)
                            }
                            .buttonStyle(.plain)
                        }
                    }
                }
            }
            .padding()
            .navigationTitle("Event Checker")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    Button("Add Event") {
                        showCreateEvent.toggle()
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.accentColor)
                }
            }
            .sheet(isPresented: $showCreateEvent, content: {
                NavigationStack {
                    CreateEventScreen()
                }
            })
        }
    }
}

#Preview {
    ContentView()
}
