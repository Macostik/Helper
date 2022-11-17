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
    }
}

struct CameraScanner_Previews: PreviewProvider {
    static var previews: some View {
        CameraScannerView(startScanning: .constant(true), scanResult: .constant(""))
    }
}
