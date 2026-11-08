//
//  OutlinedPanel.swift
//  liveliverdonor
//
//  Created by Kel on 9/20/26.
//

import SwiftUI

struct PanelStyleOutlined: ViewModifier {
    let outlineColor = Color.backgroundSecondary;
    
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity)
            .padding(AppConfiguration.mediumSpace)
            .background(Color.backgroundPrimary)
            .cornerRadius(AppConfiguration.mediumRadius)
            .overlay(
                RoundedRectangle(cornerRadius: AppConfiguration.mediumRadius)
                    .stroke(
                        outlineColor, lineWidth: 2))
    }
}

struct PanelStyleFilled: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity)
            .padding(AppConfiguration.mediumSpace)
            .background(Color.backgroundTertiary)
            .cornerRadius(AppConfiguration.mediumRadius)
            .foregroundStyle(Color.backgroundSecondary)
    }
}
