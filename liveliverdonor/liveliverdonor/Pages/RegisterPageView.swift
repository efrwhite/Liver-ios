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
    @State private var password: String = ""
    @State private var passwordConfirm: String = ""
    
    var body: some View {
        
        NavigationView {
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
                            ) .textFieldStyle(email.isValidEmail ?  OutlinedTextFieldStyle() :
                                                OutlinedTextFieldStyle(outlineColor: Color.error))
                        }
                        // TODO: Add password icon and behavior
                        VStack(
                            alignment: .leading,
                            spacing: AppConfiguration.smallSpace
                        ) {
                            Text(NSLocalizedString("password", comment: ""))
                            TextField(
                                NSLocalizedString("enterPasswordHint", comment: ""),
                                text: $password
                            ) .textFieldStyle(OutlinedTextFieldStyle())
                        }
                        VStack(
                            alignment: .leading,
                            spacing: AppConfiguration.smallSpace
                        ) {
                            Text(NSLocalizedString("confirmPassword", comment: ""))
                            TextField(
                                NSLocalizedString("enterPasswordHint", comment: ""),
                                text: $passwordConfirm
                            ) .textFieldStyle(OutlinedTextFieldStyle())
                        }
                    }
                    VStack(spacing: AppConfiguration.mediumSpace){
                        Button(action: {}) {
                            Text(NSLocalizedString("createAccount", comment: ""))
                        }.buttonStyle(ButtonStyleFilled())
                        Text(LocalizedStringKey(NSLocalizedString("termsAndPolicy", comment: "")))
                    }
                }.padding(AppConfiguration.largeSpace);
            }
        }
    }
}

#Preview {
    RegisterPageView()
        .environment(\.colorScheme, .light)
}
