import SwiftUI

struct RewardView: View {

    var body: some View {

        VStack(spacing: 20) {

            Text("Quest Complete!")
                .font(.largeTitle)
                .bold()

            Image(systemName: "trophy.fill")
                .font(.system(size: 60))

            Text("+50 XP")

            Text("+£250 Portfolio Value")

            NavigationLink("Return to Map") {
                WorldMapView()
            }
            .buttonStyle(.borderedProminent)

        }
        .padding()
    }
}

#Preview {
    RewardView()
}
