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
  static var coffee : Image { Image("coffee", bundle: BundleToken.bundle) }
  static var dessert : Image { Image("dessert", bundle: BundleToken.bundle) }
  static var drink : Image { Image("drink", bundle: BundleToken.bundle) }
  static var main : Image { Image("main", bundle: BundleToken.bundle) }
  static var starter : Image { Image("starter", bundle: BundleToken.bundle) }
  static var wine : Image { Image("wine", bundle: BundleToken.bundle) }
  static var card0 : Image { Image("card0", bundle: BundleToken.bundle) }
  static var card1 : Image { Image("card1", bundle: BundleToken.bundle) }
  static var card2 : Image { Image("card2", bundle: BundleToken.bundle) }
  static var imagePlaceholder : Image { Image("imagePlaceholder", bundle: BundleToken.bundle) }
  // Colors.xcassets
}

private final class BundleToken {
  static let bundle: Bundle = {
    Bundle(for: BundleToken.self)
  }()
}
