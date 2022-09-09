//
//  UIAppdelegate+Ext.swift
//  Helper
//
//  Created by Macostik on 07.09.2022.
//

import Foundation
import UIKit

var edges: UIEdgeInsets {
    guard let safeAreaInsets = UIApplication.shared.windows
        .first?.safeAreaInsets else { return UIEdgeInsets.zero }
    return safeAreaInsets
}
var screenSize: CGSize {
    UIScreen.main.bounds.size
}
