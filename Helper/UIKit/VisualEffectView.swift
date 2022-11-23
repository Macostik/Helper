//
//  VisualEffectView.swift
//  Helper
//
//  Created by Macostik on 23.11.2022.
//

import SwiftUI
import Foundation

struct VisualEffectView: UIViewRepresentable {
    var uiVisualEffect: UIVisualEffect?
    func makeUIView(context: UIViewRepresentableContext<Self>) -> UIVisualEffectView {
        UIVisualEffectView()
    }
    func updateUIView(_ uiView: UIVisualEffectView,
                      context: UIViewRepresentableContext<Self>) {
        uiView.effect = uiVisualEffect
    }
}
