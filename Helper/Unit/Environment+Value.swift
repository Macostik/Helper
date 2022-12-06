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
    var screenSize: CGSize {
        get { return self[ScreenSizeKey.self] }
        set { self[ScreenSizeKey.self] = newValue }
    }
    var safeAreaInsets: EdgeInsets {
        get { return self[SafeAreaInsetsKey.self] }
        set { self[SafeAreaInsetsKey.self] = newValue }
    }
}

public struct ModalTransitionKey: EnvironmentKey {
    public static let defaultValue: CGFloat = 0
}
public struct ScreenSizeKey: EnvironmentKey {
    public static let defaultValue: CGSize = .zero
}
public struct SafeAreaInsetsKey: EnvironmentKey {
    public static let defaultValue = EdgeInsets(top: 0,
                                                leading: 0,
                                                bottom: 0,
                                                trailing: 0)
}
