//
//  RegisterPageView.swift
//  liveliverdonor
//
//  Created by Kel on 9/20/26.
//

import SwiftUI

struct RegisterPageView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(.background)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    Text("Hello, world!")
                }
                .padding()
            }
        }
    }
}

#Preview {
    RegisterPageView()
}
