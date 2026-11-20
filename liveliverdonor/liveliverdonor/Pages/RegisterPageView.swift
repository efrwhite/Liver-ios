//
//  RegisterPageView.swift
//  liveliverdonor
//
//  Created by Kel on 9/20/26.
//

import SwiftUI

struct RegisterPageView: View {
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var email: String = ""
    @State private var emailIsValid: Bool = true
    @State private var password: String = ""
    @State private var passwordIsValid: Bool = true
    @State private var passwordIsSame: Bool = true
    @State private var passwordConfirm: String = ""
    
    var body: some View {
        ZStack {
            Color(Color.backgroundPrimary)
                .edgesIgnoringSafeArea(.all);
            VStack(spacing: AppConfiguration.largeSpace) {
                Text(NSLocalizedString("register", comment: "")).font(.title).fontWeight(.bold)
                VStack(
                    alignment: .leading,
                    spacing: AppConfiguration.mediumSpace
                ) {
                    HStack {
                        VStack(
                            alignment: .leading,
                            spacing: AppConfiguration.smallSpace
                        ) {
                            Text(NSLocalizedString("firstName", comment: ""))
                            TextField(
                                NSLocalizedString("firstNamePlaceholder", comment: ""),
                                text: $firstName
                            ) .textFieldStyle(OutlinedTextFieldStyle())
                        }
                        VStack(
                            alignment: .leading,
                            spacing: AppConfiguration.smallSpace
                        ) {
                            Text(NSLocalizedString("lastName", comment: ""))
                            TextField(
                                NSLocalizedString("lastNamePlaceholder", comment: ""),
                                text: $lastName
                            ) .textFieldStyle(OutlinedTextFieldStyle())
                        }
                    }
                    VStack(
                        alignment: .leading,
                        spacing: AppConfiguration.smallSpace
                    ) {
                        Text(NSLocalizedString("email", comment: ""))
                        TextField(
                            NSLocalizedString("enterEmailHint", comment: ""),
                            text: $email
                        ).textInputAutocapitalization(.never).disableAutocorrection(true)
                            .onChange(of: email) {
                                emailIsValid = email.isValidEmail
                            }
                            .textFieldStyle(emailIsValid ?  OutlinedTextFieldStyle() :
                                                OutlinedTextFieldStyle(outlineColor: Color.error))
                        if (!emailIsValid) {
                            Text(NSLocalizedString("emailValidationError", comment: "")).foregroundStyle(Color.error)
                        }
                    }
                    VStack(
                        alignment: .leading,
                        spacing: AppConfiguration.smallSpace
                    ) {
                        Text(NSLocalizedString("password", comment: ""))
                        SecureField(
                            NSLocalizedString("enterPasswordHint", comment: ""),
                            text: $password
                        ).textInputAutocapitalization(.never).disableAutocorrection(true)
                            .onChange(of: password) {
                                passwordIsValid = password.isValidPassword
                                if (!passwordConfirm.isEmpty) {
                                    passwordIsSame = password == passwordConfirm
                                }
                            }
                            .textFieldStyle(passwordIsValid ?  OutlinedTextFieldStyle() :
                                                OutlinedTextFieldStyle(outlineColor: Color.error))
                        if (!passwordIsValid) {
                            Text(NSLocalizedString("passwordValidationError", comment: "")).foregroundStyle(Color.error)
                        }
                    }
                    VStack(
                        alignment: .leading,
                        spacing: AppConfiguration.smallSpace
                    ) {
                        Text(NSLocalizedString("confirmPassword", comment: ""))
                        SecureField(
                            NSLocalizedString("enterPasswordHint", comment: ""),
                            text: $passwordConfirm
                        )
                        .textInputAutocapitalization(.never)
                        .disableAutocorrection(true)
                        .onChange(of: passwordConfirm) {
                            passwordIsSame = password == passwordConfirm
                        }
                        .textFieldStyle(passwordIsSame ?  OutlinedTextFieldStyle() :
                                            OutlinedTextFieldStyle(outlineColor: Color.error))
                        if (!passwordIsSame) {
                            Text(NSLocalizedString("passwordMatchError", comment: "")).foregroundStyle(Color.error)
                        }
                    }
                }
                VStack(spacing: AppConfiguration.mediumSpace){
                    NavigationLink(destination: WelcomePageView()) {
                        Button(action: {
                            // TODO: save account info
                            
                        }) {
                            Text(NSLocalizedString("createAccount", comment: ""))
                        }
                    }.buttonStyle(ButtonStyleFilled())
                    Text(LocalizedStringKey(NSLocalizedString("termsAndPolicy", comment: ""))).fixedSize(horizontal: false, vertical: true)
                }
            }.padding(AppConfiguration.largeSpace);
        }.foregroundColor(Color.onBackground)
    }
}

#Preview {
    RegisterPageView()
        .environment(\.colorScheme, .light)
}
