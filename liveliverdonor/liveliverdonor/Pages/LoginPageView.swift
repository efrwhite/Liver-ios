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
                VStack {
                    Text(NSLocalizedString("login", comment: "")).font(.title).fontWeight(.bold)
                    VStack(alignment: .leading) {
                        Text(NSLocalizedString("email", comment: "")).padding([.top], AppConfiguration.largeSpace)
                        TextField(
                            NSLocalizedString("enterEmailHint", comment: ""),
                            text: $email
                        ) .textFieldStyle(email.isValidEmail ?  OutlinedTextFieldStyle() :
                                            OutlinedTextFieldStyle(outlineColor: Color.error))
                        Text(NSLocalizedString("password", comment: "")).padding([.top], AppConfiguration.mediumSpace)
                        TextField(
                            NSLocalizedString("enterPasswordHint", comment: ""),
                            text: $password
                        ) .textFieldStyle(OutlinedTextFieldStyle())
                        // TODO: Forgot Password behavior and appearance
                        HStack {
                            Spacer()
                            Text(NSLocalizedString("forgotPassword", comment: ""))
                        }
                        Button(action: {}) {
                            Text(NSLocalizedString("login", comment: ""))
                        }.buttonStyle(ButtonStyleFilled()).padding([.top], AppConfiguration.largeSpace)
                        HStack{
                            VStack{
                                Divider().frame(height: 2).overlay(Color.backgroundSecondary)
                            }
                            Text(NSLocalizedString("or", comment: ""))
                            VStack{
                                Divider().frame(height: 2).overlay(Color.backgroundSecondary)
                            }
                        }.padding([.top], AppConfiguration.mediumSpace)
                        // Remove button text hardcoding? Titles may be included in SSO, look into it
                        Button(action: {}) {
                            Text("Continue with Apple")
                        }.buttonStyle(ButtonStyleOutlined()).padding([.top], AppConfiguration.mediumSpace)
                        Button(action: {}) {
                            Text("Continue with Google")
                        }.buttonStyle(ButtonStyleOutlined()).buttonStyle(ButtonStyleOutlined()).padding([.top], AppConfiguration.smallSpace)
                        Button(action: {}) {
                            Text("Continue with Facebook")
                        }.buttonStyle(ButtonStyleOutlined()).padding([.top], AppConfiguration.smallSpace)
                        
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
