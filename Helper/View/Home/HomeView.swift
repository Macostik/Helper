//
//  HomeView.swift
//  Helper
//
//  Created by Macostik on 06.09.2022.
//

import SwiftUI

struct TabItem: Identifiable, Hashable {
    let id = UUID().uuidString
    let tag: String
    let image: String
}

struct HomeView: View {
    @State var selectedItem = "house"
    @Namespace private var animation
    let tabs = [
        TabItem(tag: "house",
                image: "house"),
        TabItem(tag: "search",
                image: "magnifyingglass"),
        TabItem(tag: "person",
                image: "person")
    ]
    var body: some View {
        VStack {
            TabView(selection: $selectedItem, content: {
                ZStack {
                    Color.mainBGColor
                    Text("Home")
                        .foregroundColor(.white)
                }
                .tag("house")
                ZStack {
                    Color.mainBGColor
                    Text("Search")
                        .foregroundColor(.white)
                }
                .tag("search")
                ZStack {
                    Color.mainBGColor
                    Text("Profile")
                        .foregroundColor(.white)
                }
                .tag("person")
            })
            .tabViewStyle(.automatic)
            .ignoresSafeArea()
            HStack {
                ForEach(tabs, id: \.self) { tab in
                    Button {
                        withAnimation {
                            selectedItem = tab.tag
                        }
                    } label: {
                        VStack(spacing: 5) {
                            Image(systemName: tab.image)
                                .font(Font.poppins(.bold, size: 18))
                                .foregroundColor(Color.mainColor)
                            Circle()
                                .frame(width: 10, height: 10)
                                .matchedGeometryEffect(id: "tab", in: animation)
                                .foregroundColor(selectedItem == tab.tag ? Color.mainColor : Color.clear)
                        }
                    }
                }
                .frame(maxWidth: .infinity)
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 12).foregroundColor(Color.white.opacity(0.1)))
            .padding()
        }
        .padding(.bottom)
        .background(Color.mainBGColor)
        .ignoresSafeArea()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

