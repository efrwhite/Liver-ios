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
                    Text(NSLocalizedString("loginTitle", comment: ""))
                    Text(NSLocalizedString("loginSubtitle", comment: ""))
                    Text(NSLocalizedString("login", comment: ""))
                    Text(NSLocalizedString("email", comment: ""))
                    TextField(
                        NSLocalizedString("enterEmailHint", comment: ""),
                        text: $email
                    ) .textFieldStyle(email.isValidEmail ?  OutlinedTextFieldStyle() :
                                      OutlinedTextFieldStyle(outlineColor: Color.error))
                    Text(NSLocalizedString("password", comment: ""))
                    TextField(
                        NSLocalizedString("enterPasswordHint", comment: ""),
                        text: $password
                    ) .textFieldStyle(OutlinedTextFieldStyle())
// TODO: Button, link, or NavigationLink? Ask for Forgot Password behavior details
                    Text(NSLocalizedString("forgotPassword", comment: ""))
                    Button(action: {}) {
                        Text(NSLocalizedString("login", comment: ""))
                    }.buttonStyle(ButtonStyleFilled())
                    HStack{
                        VStack{
                            Divider().overlay(Color.disabledSecondary)
                        }
                        Text(NSLocalizedString("or", comment: ""))
                        VStack{
                            Divider().overlay(Color.disabledSecondary)
                        }
                    }
// Remove button text hardcoding? Titles may be included in SSO, look into it
                    Button(action: {}) {
                        Text("Continue with Apple")
                    }.buttonStyle(ButtonStyleOutlined())
                    Button(action: {}) {
                        Text("Continue with Google")
                    }.buttonStyle(ButtonStyleOutlined())
                    Button(action: {}) {
                        Text("Continue with Facebook")
                    }.buttonStyle(ButtonStyleOutlined())
                    
                }
                .padding()
            }
        }
    }
}

#Preview {
    LoginPageView()
}
