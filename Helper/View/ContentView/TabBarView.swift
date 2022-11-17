//
//  TabBarView.swift
//  Helper
//
//  Created by Macostik on 17.11.2022.
//

import SwiftUI

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

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
