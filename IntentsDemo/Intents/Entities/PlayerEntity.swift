//
//  PlayerEntity.swift
//  theScoreMobile
//
//  Created by Roman Onyshkevych on 2024-12-07.
//  Copyright © 2024 Score Media Ventures. All rights reserved.
//

import AppIntents

// MARK: - PlayerEntity

@available(iOS 18.0, *)
struct PlayerEntity: AppEntity {
    let id: String
    let name: String

    static let typeDisplayRepresentation: TypeDisplayRepresentation = "Player"

    var displayRepresentation: DisplayRepresentation {
        DisplayRepresentation(title: "\(name)", image: DisplayRepresentation.Image(systemName: "person.fill"))
    }

    static var defaultQuery = PlayersQuery()
}

// MARK: - PlayersQuery

@available(iOS 18.0, *)
struct PlayersQuery: EntityQuery {
    @IntentParameterDependency<ShowGameInsightsIntent>(
        \.$game
    ) var showGameInsightsIntent

    func entities(for identifiers: [PlayerEntity.ID]) async throws -> [PlayerEntity] {
        print(">>>PlayersQuery.\(#function):\(#line) ")
        return []
    }

    func suggestedEntities() async throws -> [PlayerEntity] {
        return [PlayerEntity(id: "123", name: "Previous intent value is \(showGameInsightsIntent == nil ? "nil" : "present")")]
    }
}
