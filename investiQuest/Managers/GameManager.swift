//
//  GameManager.swift
//  investiQuest
//
//  Created by Ibitola Omole on 20/06/2026.
//

import Foundation
import Observation

@Observable
final class GameManager {

    var player = Player(
        name: "Explorer",
        xp: 0,
        level: 1
    )

    var portfolio = Portfolio(
        balance: 1000
    )
    
    func awardXP(_ amount: Int) {
        player.xp += amount
    }

    func increasePortfolio(_ amount: Double) {
        portfolio.balance += amount
    }

    func completeLevelOne() {
        player.xp += 50
        portfolio.balance += 250
    }
}
