//
//  StateOfMind.swift
//  WaitAMinute
//
//  Created by Rizki Siraj on 13/03/26.
//

import Foundation
import SwiftData

@Model
class StateOfMind {
    var note: String
    var createdAt: Date
    var decision: Decision?
    
    init(note: String, createdAt: Date, decision: Decision) {
        self.note = note
        self.createdAt = createdAt
        self.decision = decision
    }
}
