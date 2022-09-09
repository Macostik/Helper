//
//  MainView.swift
//  Helper
//
//  Created by Macostik on 06.09.2022.
//

import SwiftUI

struct MainView: View {
    @State var currentPage: Int = 2
    @State private var showCameraScannerView = false
    @State private var isDeviceCapacity = false
    @State private var showDeviceNotCapacityAlert = false
    @State private var scanResults: String = ""
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
                    CameraScannerView(startScanning: $showCameraScannerView,
                                      scanResult: $scanResults)
                    .frame(width: screen.width, height: screen.height)
                    .scaleEffect(scale >= 0.88 ? scale : 0.88, anchor: .center)
                    .offset(x: -offset)
                    .blur(radius: (1 - scale) * 20)
                    .tag(1)
                }
                HomeView()
                    .tag(2)
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        }
        .background(Color.black.ignoresSafeArea())
        .ignoresSafeArea()
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
