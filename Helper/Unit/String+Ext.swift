//
//  String+Ext.swift
//  Helper
//
//  Created by Macostik on 17.11.2022.
//

import Foundation

extension String {
  var localize: String {
    return NSLocalizedString(self, comment: "")
  }
}
