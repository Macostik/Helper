//
//  ContentView.swift
//  Helper
//
//  Created by Macostik on 05.09.2022.
//

import SwiftUI

struct Tab: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let color: Color
    let image: String
    let tag: Int
}

struct ContentView: View {
    @State var currentPage: Int = 2
    init() {
        UIScrollView.appearance().bounces = false
    }
    var body: some View {
        ScrollView(.init()) {
            TabView(selection: $currentPage) {
                GeometryReader { reader in
                    let screen = reader.frame(in: .global)
                    let offset = screen.minX
                    let scale = 1 + (offset / screen.width)
                    Image.bg
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: screen.width,height: screen.height)
                    .scaleEffect(scale >= 0.88 ? scale : 0.88, anchor: .center)
                    .offset(x: -offset)
                    .blur(radius: (1 - scale) * 20)
                    .tag(1)
                }
                
                Color.pink
                    .tag(2)
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        }
        .background(Color.black.ignoresSafeArea())
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
