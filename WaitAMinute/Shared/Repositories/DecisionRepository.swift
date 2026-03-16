//
//  DecisionRepository.swift
//  WaitAMinute
//
//  Created by Rizki Siraj on 16/03/26.
//

import Foundation
import SwiftData

protocol DecisionRepositoryProtocol {
    func create(_ decision: Decision) throws
    func fetchAll() throws -> [Decision]
    func fetch(byTitle title: String) throws -> [Decision]
    func update() throws
    func delete(_ decision: Decision) throws
}

final class DecisionRepositoryImpl: DecisionRepositoryProtocol {
    
    private let context: ModelContext
    
    init(context: ModelContext) {
        self.context = context
    }
    
    func create(_ decision: Decision) throws {
        context.insert(decision)
        try context.save()
    }
    
    func fetchAll() throws -> [Decision] {
        try context.fetch(FetchDescriptor<Decision>())
    }
    
    func fetch(byTitle title: String) throws -> [Decision] {
        let descriptor = FetchDescriptor<Decision>(
            predicate: #Predicate { $0.title == title }
        )
        return try context.fetch(descriptor)
    }
    
    func update() throws {
        try context.save()
    }
    
    func delete(_ decision: Decision) throws {
        context.delete(decision)
        try context.save()
    }
}
