//
//  CardViewModel.swift
//  Helper
//
//  Created by Macostik on 17.11.2022.
//

import Foundation

class CardViewModel: ObservableObject {
    @Published var isPresented = false
    @Published var cardDetailOffset = CGFloat.zero
}
