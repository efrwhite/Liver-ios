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
                Color(.backgroundPrimary)
                    .edgesIgnoringSafeArea(.all)
                VStack {
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
        }
    }
}

#Preview {
    GetStartedPageView()
        .environment(\.colorScheme, .light)
}
