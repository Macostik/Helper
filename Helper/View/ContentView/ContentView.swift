//
//  ContentView.swift
//  Helper
//
//  Created by Macostik on 05.09.2022.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.isFullScreenPresented) private var isFullScreenPresenting
    @StateObject var contentViewModel = ContentViewModel()
    @Namespace var animation
    var body: some View {
        NavigationStack {
            VStack {
                TabView(selection: $contentViewModel.selectedItem,
                        content: {
                    ZStack {
                        HomeView()
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
                .edgesIgnoringSafeArea(isFullScreenPresenting ? .vertical : .bottom)
            }
            TabBarView(selectedTab: $contentViewModel.selectedItem,
                       isHidden: $contentViewModel.hideTabBar)
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
