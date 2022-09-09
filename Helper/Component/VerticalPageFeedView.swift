//
//  VerticalPageFeedView.swift
//  Helper
//
//  Created by Macostik on 08.09.2022.
//

import SwiftUI

struct VerticalPageFeedView<Content>: View where Content: View, Content: Hashable {
    let feed: [Content]
    let content: Content
    @Binding var selectedIndex: Int
    init(feed: [Content],
         selectedIndex: Binding<Int>,
         @ViewBuilder content: () -> Content) {
        self.feed = feed
        self._selectedIndex =  selectedIndex
        self.content = content()
    }
    var body: some View {
        TabView(selection: $selectedIndex) {
            ForEach(feed, id: \.self) { view in
                view
                    .rotationEffect(.init(degrees: 90))
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
        .rotationEffect(.init(degrees: -90))
        .frame(width: UIScreen.main.bounds.height)
        content
    }
}
