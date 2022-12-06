//
//  View+Style.swift
//  Helper
//
//  Created by Macostik on 28.11.2022.
//

import Foundation
import SwiftUI

struct ScaleButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.94 : 1)
            .animation(.easeInOut, value: configuration.isPressed)
    }
}
