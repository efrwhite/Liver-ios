//
//  TextFieldStyles.swift
//  liveliverdonor
//
//  Created by Kel on 9/20/26.
//

import SwiftUI

struct OutlinedTextFieldStyle: TextFieldStyle {
    
    var outlineColor: Color = .gray
    
    func _body(configuration: TextField<Self._Label>) -> some View {
            configuration
        .padding()
        // TODO: Make white/black depending on light/dark mode
        .background(.white)
        .overlay {
            RoundedRectangle(cornerRadius: 8, style: .continuous)
                .stroke(
                    // TODO: Figure out better color
                    Color(outlineColor))
        }
    }
}
