//
//  TextFieldStyles.swift
//  liveliverdonor
//
//  Created by Kel on 9/20/26.
//

import SwiftUI

struct OutlinedTextFieldStyle: TextFieldStyle {
    
    var outlineColor: Color = Color.disabledSecondary
    
    func _body(configuration: TextField<Self._Label>) -> some View {
            configuration
            .frame(height: 10)
        .padding()
        .background(Color.backgroundTertiary)
        .cornerRadius(8)
        .overlay {
            RoundedRectangle(cornerRadius: 8, style: .continuous)
                .stroke(
                    Color(outlineColor))
        }
    }
}
