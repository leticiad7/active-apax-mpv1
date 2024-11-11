//
//  active_apax_mpv1App.swift
//  active-apax-mpv1
//
//  Created by Leticia Amorim Domingos on 11/11/2024.
//

import SwiftUI
import SwiftData

@main
struct active_apax_mpv1App: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}