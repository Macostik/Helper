//
//  ContentView.swift
//  Helper
//
//  Created by Macostik on 05.09.2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cardViewModel = CardViewModel()
    @State var selectedItem = "house"
    @Namespace var animation
    var body: some View {
        NavigationStack {
            VStack {
                TabView(selection: $selectedItem, content: {
                    ZStack {
                        HomeView()
                            .environmentObject(cardViewModel)
                    }
                    .tag("house")
                    ZStack {
                        SearchView()
                    }
                    .tag("magnifyingglass")
                    ZStack {
                        ProfileView()
                    }
                    .tag("person")
                })
                .tabViewStyle(.page(indexDisplayMode: .never))
                .edgesIgnoringSafeArea(cardViewModel.selectedCard != nil ? .vertical : .bottom)
                TabBarView(selectedTab: $selectedItem)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.mainColor, lineWidth: 1)
                    )
                    .padding(.horizontal)
                    .offset(y: cardViewModel.selectedCard != nil ? 100 : 0)
            }
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
