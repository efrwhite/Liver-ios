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
            .padding(10)
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(
                        .accent, lineWidth: 2))
    }
}

struct ButtonStyleFilled: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(10)
            .background(.accent)
            .foregroundColor(.white)
            .cornerRadius(20)
    }
}
