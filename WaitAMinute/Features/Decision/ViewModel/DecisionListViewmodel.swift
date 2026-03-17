//
//  DecisionListViewmodel.swift
//  WaitAMinute
//
//  Created by Rizki Siraj on 17/03/26.
//

import SwiftUI
internal import Combine

@MainActor
final class DecisionViewModel: ObservableObject {

    private let repository: DecisionRepositoryProtocol

    @Published var decisions: [Decision] = []

    init(repository: DecisionRepositoryProtocol) {
        self.repository = repository
    }

    func load() {
        do {
            decisions = try repository.fetchAll()
        } catch {
            print(error)
        }
    }
}
