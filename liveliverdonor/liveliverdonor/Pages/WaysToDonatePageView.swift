
//
//  WaysToDonatePageView.swift.swift
//  liveliverdonor
//
//  Created by Kel on 11/7/26.
//

import SwiftUI

struct WaysToDonatePageView: View {
    // TODO get from saved name value, or don't show on fail
    @State private var name: String = "john"
    @State var expand1 = false
    @State var expand2 = false
    
    
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
                        Text(NSLocalizedString("twoWays", comment: "")).font(.headline)
                        Text(NSLocalizedString("moreThanOnePath", comment: "")).fixedSize(horizontal: false, vertical: true)
                    }.foregroundStyle(Color.backgroundTertiary).padding(AppConfiguration.largeSpace).frame(maxWidth: .infinity, maxHeight: AppConfiguration.headHeight, alignment: .leading)
                }
                VStack(spacing: AppConfiguration.largeSpace) {
                    VStack(spacing: AppConfiguration.mediumSpace) {
                        Button(action:{ expand1 = !expand1 }){
                            VStack(spacing: AppConfiguration.smallSpace) {
                                Image(systemName: "heart").resizable().foregroundStyle(Color.accentSecondary).frame(width: AppConfiguration.largeIcon, height: AppConfiguration.largeIcon)
                                Text(NSLocalizedString("directedDonation", comment: "")).fontWeight(.bold)
                                if (expand1) {
                                    Text(NSLocalizedString("directedDonationExplanation", comment: "")).fixedSize(horizontal: false, vertical: true)
                                }
                            }.modifier(PanelStyleOutlined())
                            
                        }.foregroundStyle(Color.black)
                        Button(action:{ expand2 = !expand2 }){
                            VStack(spacing: AppConfiguration.smallSpace) {
                                Image(systemName: "waveform.path.ecg").resizable().foregroundStyle(Color.accentPrimary).frame(width: AppConfiguration.largeIcon, height: AppConfiguration.largeIcon)
                                Text(NSLocalizedString("nonDirected", comment: "")).fontWeight(.bold)
                                if (expand2) {
                                    Text(NSLocalizedString("nonDirectedExplanation", comment: "")).fixedSize(horizontal: false, vertical: true)
                                }
                            }.modifier(PanelStyleOutlined())
                        }.foregroundStyle(Color.black)
                    }
                    Text(NSLocalizedString("notSure", comment: "")).fixedSize(horizontal: false, vertical: true)
                    HStack(spacing: AppConfiguration.mediumSpace) {
                        HStack {
                            NavigationLink(destination: WelcomePageView()) {
                                HStack {
                                    Image(systemName: "house").resizable().foregroundStyle(Color.accentPrimary).frame(width: AppConfiguration.mediumIcon, height: AppConfiguration.mediumIcon)
                                    Text(NSLocalizedString("home", comment: ""))
                                }
                            }.buttonStyle(ButtonStyleOutlined())
                            
                            NavigationLink(destination: PhasesPageView()) {
                                Text(NSLocalizedString("evaluationProcess", comment: "")).fixedSize(horizontal: false, vertical: true)
                            }.buttonStyle(ButtonStyleFilled())
                        }
                    }
                    Spacer()
                }.padding(AppConfiguration.largeSpace);
            }
        }.foregroundColor(Color.onBackground)
    }
}

#Preview {
    WaysToDonatePageView()
        .environment(\.colorScheme, .light)
}
