
import SwiftUI

struct ExpectationsScreen: View {
    private let green = Color(red: 0.05, green: 0.42, blue: 0.32)
    private let cream = Color(red: 0.97, green: 0.96, blue: 0.94)
    private let orange = Color(red: 0.86, green: 0.35, blue: 0.19)

    private let redBorder = Color(red: 0.95, green: 0.25, blue: 0.28)

    var body: some View {
        VStack(spacing: 0) {

            // Green header
            VStack(alignment: .leading) {
                Spacer()

                Text("Once you are medically cleared, here is what to expect, from scheduling your surgery through long-term recovery.")
                    .font(.system(size: 18))
                    .foregroundStyle(.white)
                    .padding(.horizontal, 24)
                    .padding(.bottom, 14)
            }
            .frame(maxWidth: .infinity)
            .frame(height: 150)
            .background(green)

            ScrollView {
                VStack(spacing: 10) {

                    // Timeline labels
                    HStack(spacing: 5) {
                        timelineLabel("OR Date")
                        timelineLabel("In the OR")
                        timelineLabel("Waking up")
                        timelineLabel("Discharge")
                    }
                    .padding(.top, 20)
                    .padding(.bottom, 4)

                    informationCard(
                        title: "In the operating room",
                        description: "Surgery typically runs 4–6 hours, timed closely with the recipient's procedure. Robotic Technique is used when appropriate to minimize incisions.",
                        borderColor: redBorder
                    )

                    informationCard(
                        title: "Waking up & early recovery",
                        description: "Pain is managed with medication and typically improves day by day. Most donors are walking within 24 hours and go home in 5–7 days.",
                        borderColor: green
                    )

                    informationCard(
                        title: "How is the recipient doing?",
                        description: "Your coordinator can share general updates on the recipient's recovery, within the limits of their privacy.",
                        borderColor: redBorder
                    )

                    informationCard(
                        title: "Long-term outlook",
                        description: "Your liver regrows to near-full size within a few months. Most donors return to full activity, with periodic follow-up visits.",
                        borderColor: green
                    )

                    NavigationLink(destination: PrivacyScreen2()) {
                        Text("Next : Privacy and confidentiality")
                    }
                    .font(.system(size: 17))
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 55)
                    .background(orange)
                    .clipShape(Capsule())
                    .padding(.horizontal, 14)
                    .padding(.top, 8)
                    .padding(.bottom, 20)
                }
                .padding(.horizontal, 26)
            }
        }
        .background(cream)
    }

    private func timelineLabel(_ title: String) -> some View {
        Text(title)
            .font(.system(size: 13))
            .frame(maxWidth: .infinity)
            .frame(height: 88, alignment: .bottom)
            .padding(.bottom, 8)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 24))
            .overlay {
                RoundedRectangle(cornerRadius: 24)
                    .stroke(.gray.opacity(0.65), lineWidth: 1)
            }
    }

    private func informationCard(
        title: String,
        description: String,
        borderColor: Color
    ) -> some View {
        VStack(alignment: .leading, spacing: 2) {
            Text(title)
                .font(.system(size: 17, weight: .medium))

            Text(description)
                .font(.system(size: 16))
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(12)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 22))
        .overlay {
            RoundedRectangle(cornerRadius: 22)
                .stroke(borderColor, lineWidth: 1)
        }
    }
}

#Preview {
    NavigationStack {
        ExpectationsScreen()
    }
}
