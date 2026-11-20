//
//  WelcomePageView.swift
//  liveliverdonor
//
//  Created by Kel on 11/7/26.
//

import SwiftUI

struct WelcomePageView: View {
    // TODO get from saved name value, or don't show on fail
    @State private var name: String = "john"
    
    
    var body: some View {
        ZStack {
            Color(Color.backgroundPrimary)
                .edgesIgnoringSafeArea(.all)
            VStack() {
                ZStack {
                    Color(Color.backgroundSecondary)
                        .edgesIgnoringSafeArea(.all).frame(maxHeight: AppConfiguration.headHeight)
                    VStack(
                        alignment: .leading,
                        spacing: AppConfiguration.mediumSpace,
                    ) {
                        Text(NSLocalizedString("welcome", comment: "")).font(.headline)
                        Text(name).font(.title)
                    }.foregroundStyle(Color.backgroundTertiary).padding(AppConfiguration.largeSpace).frame(maxWidth: .infinity, maxHeight: AppConfiguration.headHeight, alignment: .leading)
                }
                VStack(spacing: AppConfiguration.mediumSpace) {
                    VStack(alignment: .leading, spacing: AppConfiguration.smallSpace) {
                        Text(NSLocalizedString("whyDonate", comment: "")).font(.headline)
                        Text(NSLocalizedString("whyDonateExplanation", comment: "")).fixedSize(horizontal: false, vertical: true)
                    }
                    VStack(spacing: AppConfiguration.smallSpace) {
                        HStack {
                            Spacer().frame(width: AppConfiguration.largeIcon)
                            Text(NSLocalizedString("everyDonorCompletes", comment: "")).fixedSize(horizontal: false, vertical: true)
                        }.modifier(PanelStyleOutlined(padding: AppConfiguration.smallSpace))
                        HStack {
                            Image("Robot").resizable().aspectRatio(contentMode: .fit).frame(width: AppConfiguration.largeIcon)
                            Text(NSLocalizedString("roboticSurgery", comment: "")).fixedSize(horizontal: false, vertical: true)
                        }.modifier(PanelStyleOutlined(padding: AppConfiguration.smallSpace))
                    }
                    VStack(spacing: AppConfiguration.smallSpace) {
                        NavigationLink(destination: WaysToDonatePageView()) {
                            Text(NSLocalizedString("learnAbout", comment: ""))
                        }.buttonStyle(ButtonStyleFilled())
                        NavigationLink(destination: PhasesPageView()) {
                            Text(NSLocalizedString("checkEligibility", comment: ""))
                        }.buttonStyle(ButtonStyleOutlined())
                    }
                    Spacer()
                }.padding(AppConfiguration.largeSpace);
            }
        }.foregroundColor(Color.onBackground)
    }
}

#Preview {
    WelcomePageView()
        .environment(\.colorScheme, .light)
}
