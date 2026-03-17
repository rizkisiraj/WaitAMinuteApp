//
//  WaitAMinuteApp.swift
//  WaitAMinute
//
//  Created by Rizki Siraj on 12/03/26.
//

import SwiftUI
import SwiftData

@main
struct WaitAMinuteApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .fontDesign(.rounded)
        }
        .modelContainer(for: [Decision.self, StateOfMind.self])
    }
}
