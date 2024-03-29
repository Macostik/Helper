//
//  ContentView.swift
//  Helper
//
//  Created by Macostik on 05.09.2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var contentViewModel = ContentViewModel()
    @Namespace var animation
    @State private var isFullScreenPresented = false
    var body: some View {
        GeometryReader { proxy in
            NavigationStack {
                VStack {
                    TabView(selection: $contentViewModel.selectedItem,
                            content: {
                        ZStack {
                            HomeView {
                                isFullScreenPresented = $0
                            }
                        }
                        .tag(tabItems[0].name)
                        ZStack {
                            SearchView()
                        }
                        .tag(tabItems[1].name)
                        ZStack {
                            ProfileView()
                        }
                        .tag(tabItems[2].name)
                    })
                    .tabViewStyle(.page(indexDisplayMode: .never))
                }
                if isFullScreenPresented == false {
                    TabBarView(selectedTab: $contentViewModel.selectedItem,
                               isHidden: $contentViewModel.hideTabBar)
                }
            }
            .ignoresSafeArea()
            .environment(\.screenSize, proxy.size)
            .environment(\.safeAreaInsets, proxy.safeAreaInsets)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
