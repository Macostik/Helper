//
//  ContentView.swift
//  Helper
//
//  Created by Macostik on 05.09.2022.
//

import SwiftUI

struct ContentView: View {
    @State var selectedItem = "house"
    var body: some View {
        VStack {
            TabView(selection: $selectedItem, content: {
                ZStack {
                    HomeView()
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
            .tabViewStyle(.automatic)
            TabBarView(selectedTab: $selectedItem)
                .background(
                    Color.white.opacity(0.1)
                )
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.mainColor, lineWidth: 1)
                )
                .padding()
        }
        .padding(.bottom)
        .background(Color.mainBGColor)
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
