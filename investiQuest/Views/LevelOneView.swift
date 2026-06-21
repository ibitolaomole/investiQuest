//
//  LevelOneView.swift
//  investiQuest
//
//  Created by Ibitola Omole on 20/06/2026.
//

import SwiftUI

struct LevelOneView: View {

    @Environment(GameManager.self) private var gameManager

    @State private var savings = 0
    @State private var completed = false

    var body: some View {

        VStack(spacing: 24) {

            Text("Saving Basics")
                .font(.largeTitle)
                .bold()

            Text("Tap to save money and learn how wealth grows.")

            Text("Savings: £\(savings)")
                .font(.title2)

            Button("Save £100") {

                savings += 100

                if savings >= 500 && !completed {

                    completed = true

                    gameManager.completeLevelOne()
                }
            }
            .buttonStyle(.borderedProminent)

            if completed {

                Text("Quest Complete!")
                    .font(.headline)

                NavigationLink("View Portfolio") {
                    PortfolioView()
                }
            }

            Spacer()
        }
        .padding()
    }
}

#Preview {
    LevelOneView()
}
