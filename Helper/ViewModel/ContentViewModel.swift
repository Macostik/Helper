//
//  ContentViewModel.swift
//  Helper
//
//  Created by Macostik on 25.11.2022.
//

import Foundation

class ContentViewModel: ObservableObject {
    @Published var selectedItem = L10n.Tab.house
    @Published var hideTabBar = false
}

let tabItems = [
    Tab(name: L10n.Tab.house),
    Tab(name: L10n.Tab.magnifyingglass),
    Tab(name: L10n.Tab.person)
]
