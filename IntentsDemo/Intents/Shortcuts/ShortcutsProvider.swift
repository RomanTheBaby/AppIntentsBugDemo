//
//  Shortcuts.swift
//  IntentsDemo
//
//  Created by Roman Onyshkevych on 2024-12-10.
//

import AppIntents

@available(iOS 18, *)
struct ShortcutsProvider: AppShortcutsProvider {
    @AppShortcutsBuilder static var appShortcuts: [AppShortcut] {
        AppShortcut(
            intent: ShowGameInsightsIntent(),
            phrases: [
                "Show game insigts in \(.applicationName)",
            ],
            shortTitle: LocalizedStringResource("Show game insights"),
            systemImageName: "exclamationmark.bubble.fill"
        )
    }
}
