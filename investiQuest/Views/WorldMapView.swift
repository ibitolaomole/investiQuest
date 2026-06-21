//
//  WorldMapView.swift
//  investiQuest
//
//  Created by Ibitola Omole on 18/06/2026.
//

import SwiftUI

struct WorldMapView: View {
    
    var body: some View {
        
        VStack(spacing: 20) {
            
            Text("Quest Map")
                .font(.largeTitle)
                .bold()
            
            NavigationLink("Level 1: Tech Stock Surge") {
                GameView()
            }
            .buttonStyle(.borderedProminent)
            
            Button("Level 2: Investing Basics") {
            }
            .disabled(true)
            
            Button("Level 3: Risk & Reward") {
            }
            .disabled(true)
            
            NavigationLink("View Portfolio") {
                PortfolioView()
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    WorldMapView()
}
