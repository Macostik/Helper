//
//  DetailView.swift
//  Helper
//
//  Created by Macostik on 17.11.2022.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Text("Detail View")
            }
            .frame(width: geometry.size.width,
                   height: geometry.size.height)
            .background {
                Color.black.opacity(0.2)
            }
        }
        .ignoresSafeArea()
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
