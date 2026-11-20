//
//  OutlinedPanel.swift
//  liveliverdonor
//
//  Created by Kel on 9/20/26.
//

import SwiftUI
struct PanelStyleOutlined: ViewModifier {
    var padding = AppConfiguration.mediumSpace;
    let radius = AppConfiguration.mediumRadius;
    var outlineColor = Color.backgroundSecondary;
    
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity)
            .padding(padding)
            .background(Color.backgroundPrimary)
            .cornerRadius(radius)
            .overlay(
                RoundedRectangle(cornerRadius: radius)
                    .stroke(
                        outlineColor, lineWidth: 1))
    }
}

struct PanelStyleFilled: ViewModifier {
    var width: CGFloat? = CGFloat.infinity;
    
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: width)
            .padding(AppConfiguration.mediumSpace)
            .background(Color.backgroundTertiary)
            .foregroundStyle(Color.backgroundSecondary)
            .cornerRadius(AppConfiguration.mediumRadius)
    }
}

struct PanelStyleFilledCircle: ViewModifier {
    var size: CGFloat = AppConfiguration.mediumIcon;
    var backgroundColor = Color.accentSecondary
    var foregroundColor = Color.onBackground
    
    func body(content: Content) -> some View {
        content
            .frame(width: size, height: size)
            .padding(AppConfiguration.mediumSpace)
            .background(backgroundColor)
            .foregroundStyle(Color.backgroundTertiary)
            .cornerRadius(.infinity)
    }
}
