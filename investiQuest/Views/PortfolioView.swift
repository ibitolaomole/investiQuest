//
//  PortfolioView.swift
//  investiQuest
//
//  Created by Ibitola Omole on 18/06/2026.
//

import SwiftUI

struct PortfolioView: View {

    @Environment(GameManager.self) private var gameManager

    var body: some View {

        VStack(spacing: 20) {

            Text("Portfolio")
                .font(.largeTitle)
                .bold()

            Text("Player: \(gameManager.player.name)")

            Text("Level: \(gameManager.player.level)")

            Text("XP: \(gameManager.player.xp)")

            Text("Balance: £\(gameManager.portfolio.balance, specifier: "%.0f")")

            Spacer()
        }
        .padding()
    }
}

#Preview {
    PortfolioView()
}
