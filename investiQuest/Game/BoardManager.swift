//
//  BoardManager.swift
//  investiQuest
//
//  Created by Ibitola Omole on 21/06/2026.
//

import Foundation

@Observable
final class BoardManager {

    var tiles: [MarketTile] = []

    init() {
        generateBoard()
    }

    func generateBoard() {

        tiles = []

        for _ in 0..<36 {

            let randomType = TileType.allCases.randomElement()!

            tiles.append(
                MarketTile(type: randomType)
            )
        }
    }
}
