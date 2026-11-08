//
//  ButtonStyles.swift
//  liveliverdonor
//
//  Created by Kel on 9/20/26.
//

import SwiftUI

struct ButtonStyleOutlined: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity)
            .padding(10)
            .cornerRadius(AppConfiguration.largeRadius)
            .foregroundStyle(Color.backgroundSecondary)
            .overlay(
                RoundedRectangle(cornerRadius: AppConfiguration.largeRadius)
                    .stroke(
                        Color.backgroundSecondary, lineWidth: 2))
    }
}

struct ButtonStyleFilled: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity)
            .padding(10)
            .background(Color.backgroundSecondary)
            .foregroundColor(Color.backgroundPrimary)
            .cornerRadius(AppConfiguration.largeRadius)
    }
}
