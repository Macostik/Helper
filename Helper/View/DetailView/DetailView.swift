//
//  DetailView.swift
//  Helper
//
//  Created by Macostik on 17.11.2022.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @Environment(\.colorScheme) private var scheme
    var selectedCard: Card?
    init(selectedCard: Card?) {
        self.selectedCard = selectedCard
    }
    var body: some View {
        ZStack {
            Color.clear
                .blurEffect(for: scheme)
                .cornerRadius(12)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(selectedCard: nil)
    }
}
