// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import SwiftUI

internal extension Color {
  // Assets.xcassets
  static var accentColor : Color { Color("AccentColor", bundle: BundleToken.bundle) }
  // Colors.xcassets
  static var white : Color { Color("white", bundle: BundleToken.bundle) }
}

internal extension Image {
  // Assets.xcassets
  static var bg : Image { Image("bg", bundle: BundleToken.bundle) }
  static var temp : Image { Image("temp", bundle: BundleToken.bundle) }
  // Colors.xcassets
}

private final class BundleToken {
  static let bundle: Bundle = {
    Bundle(for: BundleToken.self)
  }()
}
