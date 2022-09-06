//
//  CameraScannerView.swift
//  Helper
//
//  Created by Macostik on 06.09.2022.
//

import SwiftUI

struct CameraScannerView: View {
    @Binding var startScanning: Bool
    @Binding var scanResult: String
    var body: some View {
        CameraScannerViewController(startScanning: $startScanning, scanResult: $scanResult)
            .overlay(
                Image(systemName: "video")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                    .foregroundColor(Color.pink)
            )
    }
}

struct CameraScanner_Previews: PreviewProvider {
    static var previews: some View {
        CameraScannerView(startScanning: .constant(true), scanResult: .constant(""))
    }
}
