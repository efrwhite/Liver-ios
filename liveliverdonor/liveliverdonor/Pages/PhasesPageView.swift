

//
//  PhasesPageView.swift.swift
//  liveliverdonor
//
//  Created by Kel on 11/9/26.
//

import SwiftUI

struct PhasesPageView: View {
    
    
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
                        Text(NSLocalizedString("everyDonorGoes", comment: ""))
                    }.foregroundStyle(Color.backgroundTertiary).padding(AppConfiguration.mediumSpace).frame(maxWidth: .infinity, maxHeight: AppConfiguration.headHeight, alignment: .bottomLeading)
                }
                ScrollView {
                    VStack(spacing: AppConfiguration.mediumSpace) {
                        VStack {
                            HStack {
                                Text("1").modifier(PanelStyleFilledCircle())
                                VStack(spacing: 0) {
                                    Text(NSLocalizedString("phase1", comment: "")).fontWeight(.bold).multilineTextAlignment(.center)
                                        .fixedSize(horizontal: false, vertical: true)
                                    Text(NSLocalizedString("phase1Explanation", comment: "")).multilineTextAlignment(.center)
                                        .fixedSize(horizontal: false, vertical: true)
                                }.modifier(PanelStyleOutlined(
                                    padding: AppConfiguration.smallSpace,
                                    outlineColor: Color.accentSecondary))
                            }
                            HStack {
                                Text("2").modifier(PanelStyleFilledCircle(backgroundColor: Color.accentPrimary))
                                VStack {
                                    Text(NSLocalizedString("phase2", comment: "")).fontWeight(.bold).multilineTextAlignment(.center)
                                        .fixedSize(horizontal: false, vertical: true)
                                    Text(NSLocalizedString("phase2Explanation", comment: "")).multilineTextAlignment(.center)
                                        .fixedSize(horizontal: false, vertical: true)
                                }.modifier(PanelStyleOutlined(padding: AppConfiguration.smallSpace,outlineColor: Color.accentPrimary))
                            }
                            HStack {
                                Text("3").modifier(PanelStyleFilledCircle())
                                VStack(spacing: 0) {
                                    Text(NSLocalizedString("phase3", comment: "")).fontWeight(.bold).multilineTextAlignment(.center)
                                        .fixedSize(horizontal: false, vertical: true)
                                    Text(NSLocalizedString("phase3Explanation", comment: "")).multilineTextAlignment(.center)
                                        .fixedSize(horizontal: false, vertical: true)
                                }.modifier(PanelStyleOutlined(padding: AppConfiguration.smallSpace,outlineColor: Color.accentSecondary))
                            }
                            HStack {
                                Text("4").modifier(PanelStyleFilledCircle(backgroundColor: Color.accentPrimary))
                                VStack {
                                    Text(NSLocalizedString("phase4", comment: "")).fontWeight(.bold).multilineTextAlignment(.center)
                                        .fixedSize(horizontal: false, vertical: true)
                                    Text(NSLocalizedString("phase4Explanation", comment: "")).multilineTextAlignment(.center)
                                        .fixedSize(horizontal: false, vertical: true)
                                }.modifier(PanelStyleOutlined(padding: AppConfiguration.smallSpace,outlineColor: Color.accentPrimary))
                            }
                            HStack {
                                Text("5").modifier(PanelStyleFilledCircle())
                                VStack(spacing: 0) {
                                    Text(NSLocalizedString("phase5", comment: "")).fontWeight(.bold).fixedSize(horizontal: false, vertical: true).multilineTextAlignment(.center)
                                    
                                    Text(NSLocalizedString("phase5Explanation", comment: "")).multilineTextAlignment(.center)
                                        .fixedSize(horizontal: false, vertical: true)
                                }.modifier(PanelStyleOutlined(padding: AppConfiguration.smallSpace,outlineColor: Color.accentSecondary))
                            }
                        }
                        NavigationLink(destination: PrivacyScreen2()) {
                            Text(NSLocalizedString("nextSurgery", comment: ""))
                        }.buttonStyle(ButtonStyleFilled())
                    }.padding(AppConfiguration.largeSpace);
                }
            }
        }.foregroundColor(Color.onBackground)
    }
}

#Preview {
    PhasesPageView()
        .environment(\.colorScheme, .light)
}
