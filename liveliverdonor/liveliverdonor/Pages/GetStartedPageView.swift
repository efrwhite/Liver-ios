//
//  GetStartedPageView.swift
//  liveliverdonor
//
//  Created by Kel on 9/20/26.
//

import SwiftUI

struct GetStartedPageView: View {
    var largeSpace: CGFloat = 40
    var mediumSpace: CGFloat = 10
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(.backgroundPrimary)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    HStack(spacing: mediumSpace) {
                        NavigationLink(destination: RegisterPageView()) {
                            Text(NSLocalizedString("register", comment: ""))
                        }
                        .buttonStyle(ButtonStyleOutlined())
                        NavigationLink(destination: LoginPageView()) {
                            Text(NSLocalizedString("login", comment: ""))
                        }
                        .buttonStyle(ButtonStyleFilled())
                    }
                }.padding(largeSpace);
            }
        }
    }
}

#Preview {
    GetStartedPageView()
        .environment(\.colorScheme, .light)
}
