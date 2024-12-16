//
//  Intents.swift
//  IntentsDemo
//
//  Created by Roman Onyshkevych on 2024-12-10.
//

import AppIntents

@available(iOS 18.0, *)
struct ShowGameInsightsIntent: AppIntent {
    static let title = LocalizedStringResource("Show game insights")
    static let description = LocalizedStringResource("Show insights for one of the favorited games")
    
    @Parameter(title: "Which Game?")
    var game: EventEntity
    
    @Parameter(title: "Which Player?")
    var player: PlayerEntity
    
    func perform() async throws -> some IntentResult & OpensIntent {
        return .result()
    }
}

