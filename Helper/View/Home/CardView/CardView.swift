//
//  CardView.swift
//  Helper
//
//  Created by Macostik on 28.11.2022.
//

import SwiftUI

struct CardView: View {
    let card: Card?
    let progress: CGFloat
    var body: some View {
        EmptyView().modifier(CardModifier(card: card, progress: progress))
    }
}
struct CardModifier: AnimatableModifier {
    var card: Card?
    var progress: CGFloat
    var animatableData: CGFloat {
        get { progress }
        set { progress = newValue }
    }
    func body(content: Content) -> some View {
        return GeometryReader { _ in
            VStack(alignment: .center) {
                HStack(alignment: .center) {
                    if let name = card?.name {
                       Text(name)
                    }
                }
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: nil, progress: 1)
    }
}

struct NumberView: AnimatableModifier {
    var number: Int

    var animatableData: CGFloat {
        get { CGFloat(number) }
        set { number = Int(newValue) }
    }

    func body(content: Content) -> some View {
        Text(String(number))
    }
}
