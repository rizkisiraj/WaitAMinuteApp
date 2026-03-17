//
//  DecisionCreateViewmodel.swift
//  WaitAMinute
//
//  Created by Rizki Siraj on 17/03/26.
//

import SwiftUI
internal import Combine

@MainActor
class JournalViewModel: ObservableObject {
    @Published var titleInput = ""
    @Published var descriptionInput = ""
    @Published var stateOfMindInput = ""
    
}

