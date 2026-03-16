//
//  TestModelContainer.swift
//  WaitAMinute
//
//  Created by Rizki Siraj on 16/03/26.
//

import SwiftData

struct TestModelContainer {

    static func create() throws -> ModelContainer {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        
        return try ModelContainer(
            for: Decision.self,
            StateOfMind.self,
            configurations: config
        )
    }
}
