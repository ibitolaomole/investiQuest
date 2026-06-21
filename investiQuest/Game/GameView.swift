//
//  GameView.swift
//  investiQuest
//
//  Created by Ibitola Omole on 21/06/2026.
//

import SwiftUI

struct GameView: View {

    @Environment(GameManager.self) private var gameManager

    @State private var boardManager = BoardManager()

    private let columns = Array(
        repeating: GridItem(.flexible()),
        count: 6
    )

    var body: some View {

        VStack {

            Text("Tech Stock Surge")
                .font(.largeTitle)
                .bold()

            Text("Portfolio: £\(Int(gameManager.portfolio.balance))")

            LazyVGrid(columns: columns) {

                ForEach(boardManager.tiles) { tile in

                    Button {

                        gameManager.increasePortfolio(
                            Double(tile.type.reward)
                        )

                        gameManager.awardXP(10)

                    } label: {

                        RoundedRectangle(
                            cornerRadius: 8
                        )
                        .fill(color(for: tile.type))
                        .frame(height: 50)
                    }
                }
            }
            .padding()

            NavigationLink("View Portfolio") {
                PortfolioView()
            }
            .padding(.top)
        }
    }

    func color(for type: TileType) -> Color {

        switch type {

        case .growth:
            return .green

        case .tech:
            return .blue

        case .risk:
            return .red

        case .cash:
            return .yellow

        case .diversification:
            return .purple
        }
    }
}

#Preview {
    NavigationStack {
        GameView()
    }
}
