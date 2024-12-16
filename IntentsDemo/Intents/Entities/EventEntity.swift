//
//  EventEntity.swift
//  theScoreMobile
//
//  Created by Roman Onyshkevych on 2024-12-07.
//  Copyright © 2024 Score Media Ventures. All rights reserved.
//

import AppIntents

// MARK: - EventEntity

@available(iOS 18.0, *)
struct EventEntity: AppEntity, Identifiable {
    let id: String
    let name: String
    let keyPlayersResourceURIs: [String]

    static let typeDisplayRepresentation: TypeDisplayRepresentation = "Game"

    var displayRepresentation: DisplayRepresentation {
        DisplayRepresentation(title: "\(name)", image: DisplayRepresentation.Image(systemName: "ticket.fill"))
    }

    static var defaultQuery = EventsQuery()
}

// MARK: - EventsQuery

@available(iOS 18.0, *)
struct EventsQuery: EntityQuery {
    var entities: [EventEntity.ID: EventEntity] = [:]

    func entities(for identifiers: [EventEntity.ID]) async throws -> [EventEntity] {
        [Entity(id: "1", name: "I am hardcoded first entity", keyPlayersResourceURIs: [])]
    }

    func suggestedEntities() async throws -> [EventEntity] {
        [Entity(id: "1", name: "I am hardcoded first entity", keyPlayersResourceURIs: [])]
    }
}
