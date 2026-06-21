import SwiftUI

struct OnboardingDetailsView: View {

    var body: some View {

        VStack(spacing: 24) {

            Text("How InvestiQuest Works")
                .font(.largeTitle)
                .bold()

            Text("""
            Complete quests.

            Learn investing concepts.

            Grow your virtual portfolio.

            Unlock new financial worlds.
            """)
            .multilineTextAlignment(.center)

            NavigationLink("Continue") {
                StoryView()
            }
            .buttonStyle(.borderedProminent)

        }
        .padding()
    }
}

#Preview {
    NavigationStack {
        OnboardingDetailsView()
    }
}
