//
//  ContentView.swift
//  Helper
//
//  Created by Macostik on 05.09.2022.
//

import SwiftUI

struct ContentView: View {
    @State var selectedItem = "house"
    @StateObject var homeViewModel = HomeViewModel()
    var body: some View {
        NavigationStack {
            if homeViewModel.isPresented {
                DetailView()
            } else  {
                VStack {
                    TabView(selection: $selectedItem, content: {
                        ZStack {
                            HomeView()
                                .environmentObject(homeViewModel)
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
                    .padding(.bottom)
                    TabBarView(selectedTab: $selectedItem)
                        .overlay(
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(Color.mainColor, lineWidth: 1)
                        )
                        .padding(.horizontal)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
