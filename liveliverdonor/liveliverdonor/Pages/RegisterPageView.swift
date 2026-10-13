//
//  GetStartedPageView.swift
//  liveliverdonor
//
//  Created by Kel on 9/20/26.
//

import SwiftUI

struct RegisterPageView: View {
    var body: some View {
        
        NavigationView {
            ZStack {
                Color(Color.backgroundPrimary)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Text("Hello world")
                }
            }
        }
    }
}

#Preview {
    RegisterPageView()
        .environment(\.colorScheme, .light)
}
