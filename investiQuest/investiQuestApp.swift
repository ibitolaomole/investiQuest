//
//  investiQuestApp.swift
//  investiQuest
//
//  Created by Ibitola Omole on 17/06/2026.
//

import SwiftUI

@main
struct investiQuestApp: App {

    @State private var gameManager = GameManager()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(gameManager)
        }
    }
}
