//
//  GetStartedPageView.swift
//  liveliverdonor
//
//  Created by Kel on 9/20/26.
//

import SwiftUI

struct GetStartedPageView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(Color.backgroundPrimary)
                    .edgesIgnoringSafeArea(.all)
                VStack(spacing: AppConfiguration.largeSpace) {
                    Image("Logo").resizable().aspectRatio(contentMode: .fit).padding(AppConfiguration.mediumSpace)
                    Spacer().frame(height: AppConfiguration.largeSpace)
                    Text(NSLocalizedString("learnMore", comment: "")).font(.headline)
                        .modifier(PanelStyleFilled())
                    HStack(spacing: AppConfiguration.mediumSpace) {
                        NavigationLink(destination: RegisterPageView()) {
                            Text(NSLocalizedString("register", comment: ""))
                        }
                        .buttonStyle(ButtonStyleOutlined())
                        NavigationLink(destination: LoginPageView()) {
                            Text(NSLocalizedString("login", comment: ""))
                        }
                        .buttonStyle(ButtonStyleFilled())
                    }
                }.padding(AppConfiguration.largeSpace);
            }
        }.foregroundColor(Color.onBackground)
    }
}

#Preview {
    GetStartedPageView()
        .environment(\.colorScheme, .light)
}
