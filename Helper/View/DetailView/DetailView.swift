//
//  DetailView.swift
//  Helper
//
//  Created by Macostik on 17.11.2022.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @EnvironmentObject var cardViewModel: CardViewModel
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Text("Detail View")
            }
            .frame(width: geometry.size.width,
                   height: geometry.size.height)
            .background {
                Color.black.opacity(0.2)
            }
            .offset(y: cardViewModel.cardDetailOffset)
            .gesture(DragGesture()
                .onChanged({ value in
                    cardViewModel.cardDetailOffset = value.translation.height
                })
                    .onEnded({ _ in
                        if abs(cardViewModel.cardDetailOffset) > 200 {
                            presentationMode.wrappedValue.dismiss()
                            cardViewModel.isPresented = false
                            cardViewModel.cardDetailOffset = .zero
                        }
                    })
            )
        }
        .ignoresSafeArea()
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
