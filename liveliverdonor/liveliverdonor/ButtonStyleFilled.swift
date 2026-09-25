//
//  ButtonStyleFilled.swift
//  liveliverdonor
//
//  Created by Kel on 9/20/26.
//

import SwiftUI

struct ButtonStyleFilled: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(10)
            .background(.accent)
            .foregroundColor(.white)
            .cornerRadius(20)
    }
}
