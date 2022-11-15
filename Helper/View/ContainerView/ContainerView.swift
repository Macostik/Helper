//
//  ContainerView.swift
//  Helper
//
//  Created by Macostik on 06.09.2022.
//

import SwiftUI

struct ContainerView: View {
    @State var selectedItem = "house"
    var body: some View {
        VStack {
            TabView(selection: $selectedItem, content: {
                ZStack {
                    Color.mainBGColor.ignoresSafeArea()
                    Text("Home")
                        .foregroundColor(.white)
                }
                .tag("house")
                ZStack {
                    Color.mainBGColor.ignoresSafeArea()
                    Text("Search")
                        .foregroundColor(.white)
                }
                .tag("magnifyingglass")
                ZStack {
                    Color.mainBGColor.ignoresSafeArea()
                    Text("Profile")
                        .foregroundColor(.white)
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

struct ContainerView_Previews: PreviewProvider {
    static var previews: some View {
        ContainerView()
    }
}

struct TabBarView: View {
    @Binding var selectedTab: String
    @Namespace private var animation
    var body: some View {
        HStack {
            TabBarItem(animation: animation,
                    image: "house",
                    selectedTab: $selectedTab)
            TabBarItem(animation: animation,
                    image: "magnifyingglass",
                    selectedTab: $selectedTab)
            TabBarItem(animation: animation,
                    image: "person",
                    selectedTab: $selectedTab)
        }
        .padding()
        .frame(maxWidth: .infinity)
    }
}

struct TabBarItem: View {
    var animation: Namespace.ID
    var image: String
    @Binding var selectedTab: String
    var body: some View {
        ZStack {
            Button {
                withAnimation {
                    selectedTab = image
                }
            } label: {
                VStack {
                    Image(systemName: image)
                        .font(Font.poppins(.bold, size: 18))
                        .foregroundColor(Color.mainColor)
                }
            }
            .frame(maxWidth: .infinity)
            if selectedTab == image {
                Triangle()
                    .fill(Color.mainColor)
                    .frame(width: 10, height: 5)
                    .matchedGeometryEffect(id: "Tab", in: animation)
                    .foregroundColor(selectedTab == image ? Color.mainColor : Color.clear)
                    .offset(y: 25)
            }
        }
    }
}

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))

        return path
    }
}
