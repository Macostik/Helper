//
//  HomeView.swift
//  Helper
//
//  Created by Macostik on 17.11.2022.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var cardViewModel: CardViewModel
    var body: some View {
        VStack {
            Text(L10n.Home.title)
                .font(.title)
                .fontWeight(.bold)
            ScrollView(.vertical, showsIndicators: false) {
                ForEach(1..<5) { _ in
                    cardView()
                        .onTapGesture {
                            cardViewModel.isPresented = true
                        }
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

@ViewBuilder func cardView() -> some View {
    ZStack {}
    .frame(width: screenSize.width - 20, height: 400)
    .background(.black.opacity(0.2))
    .background(.thinMaterial)
    .cornerRadius(12)
}
