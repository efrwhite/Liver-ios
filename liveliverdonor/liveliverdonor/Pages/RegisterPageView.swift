//
//  GetStartedPageView.swift
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
    
    var body: some View {
        
        NavigationView {
            ZStack {
                Color(Color.backgroundPrimary)
                    .edgesIgnoringSafeArea(.all);
                VStack{
                    Text(NSLocalizedString("register", comment: "")).font(.title).fontWeight(.bold)
                    VStack(
                        alignment: .leading,
                    ) {
                        HStack {
                            VStack(
                                alignment: .leading
                            ) {
                                Text(NSLocalizedString("firstName", comment: ""))
                                TextField(
                                    NSLocalizedString("firstNamePlaceholder", comment: ""),
                                    text: $firstName
                                ) .textFieldStyle(OutlinedTextFieldStyle())
                            }
                            VStack(
                                alignment: .leading
                            ) {
                                Text(NSLocalizedString("lastName", comment: ""))
                                TextField(
                                    NSLocalizedString("lastNamePlaceholder", comment: ""),
                                    text: $lastName
                                ) .textFieldStyle(OutlinedTextFieldStyle())
                            }
                        }.padding([.top], AppConfiguration.largeSpace)
                        Text(NSLocalizedString("email", comment: "")).padding([.top], AppConfiguration.mediumSpace)
                        TextField(
                            NSLocalizedString("enterEmailHint", comment: ""),
                            text: $email
                        ) .textFieldStyle(email.isValidEmail ?  OutlinedTextFieldStyle() :
                                            OutlinedTextFieldStyle(outlineColor: Color.error))
                        // TODO: Add password icon and behavior
                        Text(NSLocalizedString("password", comment: "")).padding([.top], AppConfiguration.mediumSpace)
                        TextField(
                            NSLocalizedString("enterPasswordHint", comment: ""),
                            text: $password
                        ) .textFieldStyle(OutlinedTextFieldStyle())
                        Text(NSLocalizedString("confirmPassword", comment: "")).padding([.top], 5)
                        TextField(
                            NSLocalizedString("enterPasswordHint", comment: ""),
                            text: $password
                        ) .textFieldStyle(OutlinedTextFieldStyle())
                    }
                        Button(action: {}) {
                            Text(NSLocalizedString("createAccount", comment: ""))
                        }.buttonStyle(ButtonStyleFilled()).padding([.top], AppConfiguration.largeSpace)
                        // TODO: Change terms/policy link appearance?
                        // https://stackoverflow.com/questions/78525619/how-to-style-markdown-elements-in-swiftui
                    Text(LocalizedStringKey(NSLocalizedString("termsAndPolicy", comment: "")))        .padding([.top], AppConfiguration.mediumSpace)
                }.padding(AppConfiguration.largeSpace);
            }
        }
    }
}

#Preview {
    RegisterPageView()
        .environment(\.colorScheme, .light)
}
