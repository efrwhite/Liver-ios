
import SwiftUI

struct PrivacyScreen2: View {
    @State private var understandsPrivacy = false

    private let green = Color(red: 0.05, green: 0.42, blue: 0.32)
    private let cream = Color(red: 0.97, green: 0.96, blue: 0.94)
    private let orange = Color(red: 0.86, green: 0.35, blue: 0.19)
    private let redBorder = Color(red: 0.95, green: 0.25, blue: 0.28)

    var body: some View {
        VStack(spacing: 0) {
            VStack(spacing: 7) {
                Image(systemName: "lock")
                    .font(.system(size: 35))
                    .foregroundStyle(.white)
                    .frame(width: 82, height: 82)
                    .background(orange)
                    .clipShape(Circle())
                    .padding(.bottom, 8)

                Text("Privacy, first and always")
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundStyle(.white)

                Text("Your entire Evaluation is 100% confidential")
                    .font(.system(size: 14))
                    .foregroundStyle(.white)
            }
            .frame(maxWidth: .infinity)
            .frame(height: 210)
            .background(green)

            ScrollView {
                VStack(spacing: 10) {
                    privacyCard(
                        icon: "eye.slash",
                        description: "The recipient will never see your medical results or test details.",
                        borderColor: redBorder,
                        iconColor: green
                    )

                    privacyCard(
                        icon: "arrow.uturn.backward.circle",
                        description: "You can step away at any time, for any reason. The recipient will not be told why or that you withdrew.",
                        borderColor: green,
                        iconColor: orange
                    )

                    privacyCard(
                        icon: "square.and.arrow.up",
                        description: "If you want the recipient to know something, that's always your choice to share. We won't disclose it on your behalf.",
                        borderColor: redBorder,
                        iconColor: green
                    )

                    Spacer(minLength: 70)

                    Button {
                        understandsPrivacy.toggle()
                    } label: {
                        HStack(spacing: 14) {
                            Image(systemName: understandsPrivacy
                                  ? "checkmark.square.fill"
                                  : "square")
                                .font(.system(size: 22))

                            Text("I understand my evaluation is confidential.")
                                .font(.system(size: 13))

                            Spacer(minLength: 0)
                        }
                        .foregroundStyle(.black)
                        .padding(.horizontal, 16)
                        .frame(height: 42)
                        .background(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 14))
                        .overlay {
                            RoundedRectangle(cornerRadius: 14)
                                .stroke(green, lineWidth: 1)
                        }
                    }

                    NavigationLink(destination: MapScreen()) {
                        Text("Continue to contact the team")
                            .font(.system(size: 17))
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity)
                            .frame(height: 60)
                            .background(orange)
                            .clipShape(Capsule())
                            .opacity(understandsPrivacy ? 1.0 : 0.5)
                            .contentShape(Capsule())
                    }
                    .disabled(!understandsPrivacy)
                    .padding(.horizontal, 18)
                    .padding(.top, 25)
                    .padding(.bottom, 18)
                }
                .padding(.horizontal, 26)
                .padding(.top, 48)
            }
        }
        .background(cream)
    }

    private func privacyCard(
        icon: String,
        description: String,
        borderColor: Color,
        iconColor: Color
    ) -> some View {
        HStack(spacing: 14) {
            Image(systemName: icon)
                .font(.system(size: 26, weight: .medium))
                .foregroundStyle(iconColor)
                .frame(width: 40)

            Text(description)
                .font(.system(size: 14, weight: .medium))
                .foregroundStyle(.black)

            Spacer(minLength: 0)
        }
        .padding(16)
        .frame(maxWidth: .infinity)
        .frame(minHeight: 120)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 24))
        .overlay {
            RoundedRectangle(cornerRadius: 24)
                .stroke(borderColor, lineWidth: 1)
        }
    }
}

#Preview {
    NavigationStack {
        PrivacyScreen2()
    }
}
