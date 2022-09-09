// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import SwiftUI

internal extension Color {
  // Assets.xcassets
  static var accentColor : Color { Color("AccentColor", bundle: BundleToken.bundle) }
  // Colors.xcassets
  static var mainBGColor : Color { Color("mainBGColor", bundle: BundleToken.bundle) }
  static var mainColor : Color { Color("mainColor", bundle: BundleToken.bundle) }
}

internal extension Image {
  // Assets.xcassets
  static var homeViewBG : Image { Image("HomeView_BG", bundle: BundleToken.bundle) }
  // Colors.xcassets
}

private final class BundleToken {
  static let bundle: Bundle = {
    Bundle(for: BundleToken.self)
  }()
}
