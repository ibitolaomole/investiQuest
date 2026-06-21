//
//  TileType.swift
//  investiQuest
//
//  Created by Ibitola Omole on 20/06/2026.
//

import Foundation

enum TileType: String, CaseIterable {

    case growth
    case tech
    case risk
    case cash
    case diversification

    var reward: Int {

        switch self {

        case .growth:
            return 100

        case .tech:
            return 150

        case .risk:
            return 50

        case .cash:
            return 75

        case .diversification:
            return 125
        }
    }
}
