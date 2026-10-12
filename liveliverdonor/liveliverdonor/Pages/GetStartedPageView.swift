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
                Color(.background)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Text(NSLocalizedString("learnMore", comment: ""))
                    HStack {
                        NavigationLink(destination: RegisterPageView()) {
                            Text(NSLocalizedString("register", comment: ""))
                        }
                        .buttonStyle(ButtonStyleOutlined())
                        NavigationLink(destination: LoginPageView()) {
                            Text(NSLocalizedString("login", comment: ""))
                        }
                        .buttonStyle(ButtonStyleFilled())
                    }
                }
            }
        }
    }
}

#Preview {
    GetStartedPageView()
        .environment(\.colorScheme, .light)
}
