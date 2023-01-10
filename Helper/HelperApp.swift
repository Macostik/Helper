//
//  HelperApp.swift
//  Helper
//
//  Created by Macostik on 05.09.2022.
//

import SwiftUI
import FirebaseCore
import FirebaseFirestoreSwift

@main
struct HelperApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
