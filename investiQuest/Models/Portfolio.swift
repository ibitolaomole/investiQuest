//
//  Portfolio.swift
//  investiQuest
//
//  Created by Ibitola Omole on 18/06/2026.
//


import Foundation

/// Represents a player's evolving investment portfolio and their multidimensional progression.
struct Portfolio {
    // Core balance and investments
    var balance: Double = 1000
    var stocks: Double = 0
    var bonds: Double = 0
    var cash: Double = 0
    var crypto: Double = 0
    var history: [Double] = [] // Historical portfolio balances

    // MARK: - Multi-Dimensional Levels/Skills
    struct Skills {
        var investorIQ: Int = 1          // Knowledge of finance & markets
        var decisionMaking: Int = 1      // Risk/reward, management
        var socialInfluence: Int = 1     // Community, mentorship, collaboration
    }
    var skills = Skills()

    // MARK: - Visual & Experiential Identity
    struct Visuals {
        var theme: String = "Default Quantum"     // e.g. quantum/tech/futuristic
        var badges: [String] = []                 // e.g. earned holographic badges
        var hasAnimatedPortfolio: Bool = false    // Animation/unlock status
    }
    var visuals = Visuals()

    // MARK: - Narrative Progression
    struct Story {
        var currentChapter: Int = 1
        var storyFlags: [String: Bool] = [:]      // E.g. special choices, discovered secrets
    }
    var story = Story()

    // MARK: - Social Progression
    struct Social {
        var isMentor: Bool = false                // Unlocked mentor ability?
        var friends: [String] = []                // Friend identifiers
        var canChallengeFriends: Bool = false     // Social challenge feature
        var teamName: String? = nil               // For team-based quests
    }
    var social = Social()

    // MARK: - Dynamic Challenge Preferences
    struct Preferences {
        var cryptoAffinity: Int = 0       // Higher = more crypto challenges
        var socialAffinity: Int = 0       // Higher = more social/team quests
        // Extend for other preferences as needed
    }
    var preferences = Preferences()

    // MARK: - Real-World Impact/Charity Tracking
    var unlockedCharityMilestones: [String] = []  // E.g. reached levels that trigger donations
}

