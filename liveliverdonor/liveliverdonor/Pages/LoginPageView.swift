//
//  LoginPageView.swift
//  liveliverdonor
//
//  Created by Kel on 9/20/26.
//

import SwiftUI

struct LoginPageView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(.backgroundPrimary)
                    .edgesIgnoringSafeArea(.all)
                VStack(spacing: AppConfiguration.largeSpace)
                {
                    VStack{
                        Text(NSLocalizedString("welcomeBack", comment: "")).font(.headline)
                        Text(NSLocalizedString("signInTo", comment: ""))
                        Spacer()
                            .frame(height: AppConfiguration.mediumSpace)
                        Text(NSLocalizedString("login", comment: "")).font(.title).fontWeight(.bold)
                    }
                    VStack(alignment: .leading, spacing: AppConfiguration.mediumSpace) {
                        VStack(alignment: .leading, spacing: AppConfiguration.smallSpace) {
                            Text(NSLocalizedString("email", comment: ""))
                            TextField(
                                NSLocalizedString("enterEmailHint", comment: ""),
                                text: $email
                            ) .textFieldStyle(email.isValidEmail ?  OutlinedTextFieldStyle() :
                                                OutlinedTextFieldStyle(outlineColor: Color.error))
                        }
                        VStack(alignment: .leading, spacing: AppConfiguration.smallSpace) {
                            Text(NSLocalizedString("password", comment: ""))
                            TextField(
                                NSLocalizedString("enterPasswordHint", comment: ""),
                                text: $password
                            ) .textFieldStyle(OutlinedTextFieldStyle())
                            HStack {
                                Spacer()
                                Text(NSLocalizedString("forgotPassword", comment: ""))
                            }
                        }
                        Button(action: {}) {
                            Text(NSLocalizedString("login", comment: ""))
                        }.buttonStyle(ButtonStyleFilled())
                    }
                        VStack(spacing: AppConfiguration.mediumSpace) {
                        HStack{
                            VStack{
                                Divider().frame(height: 2).overlay(Color.backgroundSecondary)
                            }
                            Text(NSLocalizedString("or", comment: ""))
                            VStack{
                                Divider().frame(height: 2).overlay(Color.backgroundSecondary)
                            }
                        }
                            Button(action: {}) {
                                Text("Continue with Apple")
                            }.buttonStyle(ButtonStyleOutlined())
                            Button(action: {}) {
                                Text("Continue with Google")
                            }.buttonStyle(ButtonStyleOutlined()).buttonStyle(ButtonStyleOutlined())
                            Button(action: {}) {
                                Text("Continue with Facebook")
                            }.buttonStyle(ButtonStyleOutlined())
                    }
                }
                .padding(AppConfiguration.largeSpace);
            }
        }
    }
}

#Preview {
    LoginPageView()
}
