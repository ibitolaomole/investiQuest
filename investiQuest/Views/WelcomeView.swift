//
//  WelcomeView.swift
//  investiQuest
//
//  Created by Ibitola Omole on 18/06/2026.
//
//  WelcomeView is intended as the app's onboarding entry point and must be pushed from a NavigationStack.

import SwiftUI
import UIKit

struct WelcomeView: View {
    @State private var name = ""
    @State private var age = ""
    @State private var selectedGoal = ""
    @State private var showValidation = false
    @FocusState private var focusedField: Field?
    
    @State private var gradientPhase: CGFloat = 0
    private let feedback = UINotificationFeedbackGenerator()

    let goals = [
        "Learn to Save",
        "Understand Investing",
        "Grow My (Fake) Money",
        "Master Financial Skills"
    ]

    enum Field: Hashable { case name, age }

    var isFormValid: Bool {
        guard let ageNum = Int(age),
              (9...18).contains(ageNum),
              !name.trimmingCharacters(in: .whitespaces).isEmpty,
              !selectedGoal.isEmpty else { return false }
        return true
    }

    var body: some View {
        ZStack {
            AngularGradient(
                gradient: Gradient(colors: [.blue, .purple, .pink, .blue]),
                center: .top,
                angle: .degrees(Double(gradientPhase))
            )
            .ignoresSafeArea()
            .animation(.linear(duration: 20).repeatForever(autoreverses: false), value: gradientPhase)

            // Decorative blurred circles for depth
            Circle()
                .fill(Color.white.opacity(0.12))
                .frame(width: 260, height: 260)
                .blur(radius: 40)
                .offset(x: -140, y: -320)
            Circle()
                .fill(Color.white.opacity(0.10))
                .frame(width: 220, height: 220)
                .blur(radius: 36)
                .offset(x: 160, y: 300)

            VStack(spacing: 24) {
                Spacer(minLength: 24)

                Image(systemName: "chart.line.uptrend.xyaxis")
                    .font(.system(size: 80))
                    .foregroundStyle(.white)
                    .padding(.bottom, 8)

                VStack(spacing: 6) {
                    Text("investiQuest")
                        .font(.system(size: 44, weight: .heavy, design: .rounded))
                        .foregroundStyle(.white)
                        .shadow(color: .black.opacity(0.15), radius: 8, x: 0, y: 4)

                    Text("Learn Finance. Level Up.")
                        .font(.subheadline)
                        .foregroundStyle(.white.opacity(0.92))
                }

                Spacer(minLength: 12)

                VStack(spacing: 6) {
                    Text("Embark on your financial journey.")
                        .foregroundStyle(.white.opacity(0.95))
                        .multilineTextAlignment(.center)
                    Text("It only takes a minute.")
                        .font(.footnote)
                        .foregroundStyle(.white.opacity(0.85))
                }
                .padding(.horizontal)

                NavigationLink {
                    OnboardingDetailsView()
                } label: {
                    HStack(spacing: 8) {
                        Image(systemName: "play.fill")
                        Text("Get Started")
                            .fontWeight(.bold)
                    }
                    .padding()
                }
                .buttonStyle(.borderedProminent)
                .tint(.white)
                .foregroundStyle(.blue)
                .clipShape(RoundedRectangle(cornerRadius: 14, style: .continuous))
                .onTapGesture { feedback.notificationOccurred(.success) }

                Spacer(minLength: 16)
            }
            .padding(.horizontal)
            .onAppear { gradientPhase = 360 }
        }
    }
}

#Preview {
    NavigationStack {
        WelcomeView()
    }
}
