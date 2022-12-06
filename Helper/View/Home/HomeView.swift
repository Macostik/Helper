//
//  HomeView.swift
//  Helper
//
//  Created by Macostik on 17.11.2022.
//

import SwiftUI

struct HomeView: View {
    @Environment(\.screenSize) private var screenSize
    @StateObject var cardViewModel = CardViewModel()
    @Namespace var animation
    @State var number: CGFloat = 0
    @State var animated = false
    private var isFullPresented: ((Bool) -> Void)
    init(isFullPresented: @escaping (Bool) -> Void) {
        self.isFullPresented = isFullPresented
    }
    var body: some View {
        ZStack {
            ScrollView(.vertical, showsIndicators: false) {
                ForEach(cardViewModel.cardList) { card in
                    CardView(card: card,
                             progress: number)
                    .background(Color.gray.opacity(0.3))
                    .tag(card.id)
                    .cornerRadius(12)
                    .onTapGesture {
                        withAnimation(.easeInOut(duration: 3.0)) {
                            cardViewModel.selectedCard = card
                            isFullPresented(true)
                            number = 0
                        }
                    }
                    .matchedGeometryEffect(id: card.id, in: animation)
                    .frame(height: 400)
                    .padding(.horizontal, 24)
                }
            }
            .overlay {
                if let selectedCard = cardViewModel.selectedCard {
                    CardView(card: selectedCard,
                             progress: number)
                    .background(Color.gray.opacity(0.3))
                    .cornerRadius(12)
                    .onTapGesture {
                        withAnimation(.easeInOut(duration: 3.0)) {
                            cardViewModel.selectedCard = nil
                            isFullPresented(false)
                            animated = true
                            number = 1
                        }
                    }
                    .matchedGeometryEffect(id: selectedCard.id, in: animation)
                    .frame(width: screenSize.width,
                           height: screenSize.height)
                    .ignoresSafeArea()
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
        HomeView { _ in }
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
