//
//  Decision.swift
//  WaitAMinute
//
//  Created by Rizki Siraj on 13/03/26.
//

import Foundation
import SwiftData

@Model
class Decision {
    var title: String
    var dueDate: Date
    
    @Relationship(deleteRule: .cascade, inverse: \StateOfMind.decision)
    var stateOfMinds: [StateOfMind]
    
    var iconName: String
    var createdAt: Date
    
    init(title: String, dueDate: Date, stateOfMinds: [StateOfMind] = [], iconName: String, createdAt: Date) {
        self.title = title
        self.dueDate = dueDate
        self.stateOfMinds = stateOfMinds
        self.iconName = iconName
        self.createdAt = createdAt
    }
}
    
