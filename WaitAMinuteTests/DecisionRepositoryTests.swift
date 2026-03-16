//
//  Deci.swift
//  WaitAMinute
//
//  Created by Rizki Siraj on 16/03/26.
//

import XCTest
import SwiftData
@testable import WaitAMinute

final class DecisionRepositoryTests: XCTestCase {

    var container: ModelContainer!
    var context: ModelContext!
    var repository: DecisionRepositoryProtocol!

    override func setUpWithError() throws {
        container = try TestModelContainer.create()
        context = ModelContext(container)
        repository = DecisionRepositoryImpl(context: context)
    }

    override func tearDownWithError() throws {
        container = nil
        context = nil
        repository = nil
    }
    
    func testCreateDecision() throws {

        let decision = Decision(
            title: "Move abroad",
            dueDate: Date(),
            iconName: "airplane",
            createdAt: Date()
        )

        try repository.create(decision)

        let results = try repository.fetchAll()

        XCTAssertEqual(results.count, 1)
        XCTAssertEqual(results.first?.title, "Move abroad")
    }
    
    func testFetchDecisionByTitle() throws {

        let decision = Decision(
            title: "Buy house",
            dueDate: Date(),
            iconName: "house",
            createdAt: Date()
        )

        try repository.create(decision)

        let results = try repository.fetch(byTitle: "Buy house")

        XCTAssertEqual(results.count, 1)
    }
    
    func testUpdateDecision() throws {

        let decision = Decision(
            title: "Old title",
            dueDate: Date(),
            iconName: "clock",
            createdAt: Date()
        )

        try repository.create(decision)

        decision.title = "Updated title"
        try repository.update()

        let results = try repository.fetchAll()

        XCTAssertEqual(results.first?.title, "Updated title")
    }
    
    func testDeleteDecision() throws {

        let decision = Decision(
            title: "Temporary decision",
            dueDate: Date(),
            iconName: "trash",
            createdAt: Date()
        )

        try repository.create(decision)

        try repository.delete(decision)

        let results = try repository.fetchAll()

        XCTAssertEqual(results.count, 0)
    }
    
    func testDecisionWithStateOfMind() throws {

        let decision = Decision(
            title: "Career change",
            dueDate: Date(),
            iconName: "briefcase",
            createdAt: Date()
        )

        let state = StateOfMind(
            note: "Feeling hopeful",
            createdAt: Date(),
            decision: decision
        )

        decision.stateOfMinds.append(state)

        try repository.create(decision)

        let results = try repository.fetchAll()

        XCTAssertEqual(results.first?.stateOfMinds.count, 1)
    }
}
