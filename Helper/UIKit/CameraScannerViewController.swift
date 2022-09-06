//
//  CameraScannerViewController.swift
//  Helper
//
//  Created by Macostik on 06.09.2022.
//

import SwiftUI
import UIKit
import VisionKit

struct CameraScannerViewController: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UIViewController {
        UIViewController()
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        
    }
    
    @Binding var startScanning: Bool
    @Binding var scanResult: String
//    class Coordinator: NSObject, DataScannerViewControllerDelegate {
//        var parent: CameraScannerViewController
//        init(_ parent: CameraScannerViewController) {
//            self.parent = parent
//        }
//
//        func dataScanner(_ dataScanner: DataScannerViewController, didTapOn item: RecognizedItem) {
//            switch item {
//            case .text(let text):
//                parent.scanResult = text.transcript
//            default:
//                break
//            }
//        }
//    }
//    func makeCoordinator() -> Coordinator {
//        Coordinator(self)
//    }
//    func makeUIViewController(context: Context) -> DataScannerViewController {
//        let viewController = DataScannerViewController(
//            recognizedDataTypes: [.text()],
//            qualityLevel: .fast,
//            recognizesMultipleItems: false,
//            isHighFrameRateTrackingEnabled: false,
//            isHighlightingEnabled: true)
//        
//        viewController.delegate = context.coordinator
//
//        return viewController
//    }
//    func updateUIViewController(_ viewController: DataScannerViewController, context: Context) {
//        if startScanning {
//            try? viewController.startScanning()
//        } else {
//            viewController.stopScanning()
//        }
//    }
}
