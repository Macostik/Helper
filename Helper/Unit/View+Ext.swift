//
//  View+Ext.swift
//  Helper
//
//  Created by Macostik on 23.11.2022.
//

import Foundation
import SwiftUI

extension View {
    func blurEffect(for scheme: ColorScheme) -> some View {
        VisualEffectView(uiVisualEffect: UIBlurEffect(style: scheme == .dark ? .dark : .light))
    }
}
