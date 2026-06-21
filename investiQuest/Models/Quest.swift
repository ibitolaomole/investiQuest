//
//  Quest.swift
//  investiQuest
//
//  Created by Ibitola Omole on 20/06/2026.
//

import Foundation

struct Quest: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let xpReward: Int
}
