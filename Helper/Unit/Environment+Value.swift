//
//  Environment+Value.swift
//  Helper
//
//  Created by Macostik on 21.11.2022.
//

import Foundation
import SwiftUI
import Combine

extension EnvironmentValues {
    var modalTransitionPercent: CGFloat {
        get { return self[ModalTransitionKey.self] }
        set { self[ModalTransitionKey.self] = newValue }
    }
}

public struct ModalTransitionKey: EnvironmentKey {
    public static let defaultValue: CGFloat = 0
}
