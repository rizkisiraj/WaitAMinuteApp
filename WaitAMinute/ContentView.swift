//
//  ContentView.swift
//  WaitAMinute
//
//  Created by Rizki Siraj on 12/03/26.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]

    var body: some View {
        NavigationStack {
            DecisionListView()
        }
        .tint(.indigo)
        
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
