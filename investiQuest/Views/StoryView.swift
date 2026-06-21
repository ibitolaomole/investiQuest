//
//  StoryView.swift
//  investiQuest
//
//  Created by Ibitola Omole on 21/06/2026.
//

import SwiftUI

struct StoryView: View {

    var body: some View {

        VStack(spacing: 24) {

            Spacer()

            Text("Year 2040")
                .font(.largeTitle)
                .bold()

            Text("""
            You have inherited £1000.

            Your mission is to learn how money grows and build your financial future through smart decisions.
            """)
            .multilineTextAlignment(.center)
            .padding(.horizontal)

            Spacer()

            NavigationLink("Start Journey") {
                WorldMapView()
            }
            .buttonStyle(.borderedProminent)

            Spacer()
        }
        .padding()
    }
}

#Preview {
    NavigationStack {
        StoryView()
    }
}
