//
//  HomeView.swift
//  Helper
//
//  Created by Macostik on 17.11.2022.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var cardViewModel: CardViewModel
    @Namespace var animation
    var body: some View {
        ZStack {
            if let selectedCard = cardViewModel.selectedCard {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(Color.gray.opacity(0.3))
                    .onTapGesture {
                        withAnimation(.easeInOut(duration: 1.0)) {
                            cardViewModel.selectedCard = nil
                        }
                    }
                    .matchedGeometryEffect(id: selectedCard.id, in: animation)
                    .frame(width: screenSize.width, height: screenSize.height)
            } else {
                ScrollView(.vertical, showsIndicators: false) {
                    ForEach(cardViewModel.cardList) { card in
                        RoundedRectangle(cornerRadius: 12)
                            .foregroundColor(Color.gray.opacity(0.3))
                            .onTapGesture {
                                withAnimation(.easeInOut(duration: 1.0)) {
                                    cardViewModel.selectedCard = card
                                }
                            }
                            .matchedGeometryEffect(id: card.id, in: animation)
                            .frame(height: 400)
                            .padding(.horizontal, 24)
                    }
                }
            }
        }
    }
    func tapThumbnail(_ card: Card) {
        withAnimation(.hero) { cardViewModel.selectedCard = card }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct ScaleButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.94 : 1)
            .animation(.easeInOut, value: configuration.isPressed)
    }
}

struct CardView: View {
    let card: Card?
    @Namespace var animation
    var body: some View {
        ZStack {
            Image(card?.id ?? "")
                .resizable()
                .scaledToFill()
        }
        .aspectRatio(contentMode: .fill)
        .frame(width: screenSize.width - 7,
               height: 400)
        .background(.black.opacity(0.2))
        .cornerRadius(12)
        .background(.thinMaterial)
        .matchedGeometryEffect(id: card?.id, in: animation )
    }
}

var debugAnimations = true
extension Animation {
    static var hero: Animation { debugAnimations ?
        debug : .interactiveSpring(response: 0.6,
                                   dampingFraction: 0.6,
                                   blendDuration: 0.25) }
    static var debug: Animation { .easeInOut(duration: 4.0) }
}
