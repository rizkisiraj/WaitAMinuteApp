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
    
    private let repository: DecisionRepositoryProtocol
    
    @Published var titleInput = ""
    @Published var descriptionInput = ""
    @Published var stateOfMindInput = ""
    
    init(repository: DecisionRepositoryProtocol) {
        self.repository = repository
    }
    
    func createDecision() async {
        let decision = Decision(
            title: titleInput,
            dueDate: Date(),
            stateOfMinds: [StateOfMind(note: stateOfMindInput)],
            createdAt: Date(),
        )
        
        try? self.repository.create(decision)
    }
}

