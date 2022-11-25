//
//  Environment+Value.swift
//  Helper
//
//  Created by Macostik on 21.11.2022.
//

import Foundation
import SwiftUI

extension EnvironmentValues {
    var modalTransitionPercent: CGFloat {
        get { return self[ModalTransitionKey.self] }
        set { self[ModalTransitionKey.self] = newValue }
    }
    var isFullScreenPresented: Bool {
        get { return self[FullScreenPresentingKey.self] }
        set {
            self[FullScreenPresentingKey.self] = newValue
        }
    }
}

public struct ModalTransitionKey: EnvironmentKey {
    public static let defaultValue: CGFloat = 0
}

public struct FullScreenPresentingKey: EnvironmentKey {
    public static let defaultValue: Bool = false
}
