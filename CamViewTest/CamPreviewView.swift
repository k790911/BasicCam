//
//  CamPreviewView.swift
//  CamViewTest
//
//  Created by 김재훈 on 7/30/24.
//

import SwiftUI
import AVFoundation

struct CamPreviewView: UIViewRepresentable {
    
    let session: AVCaptureSession
    
    func makeUIView(context: Context) -> some UIView {
        let view = PreviewView()
        //view.backgroundColor = .white
        //view.videoPreviewLayer.videoGravity = .resizeAspectFill
        //view.videoPreviewLayer.cornerRadius = 0
        view.videoPreviewLayer.session = session
        //view.videoPreviewLayer.connection?.videoRotationAngle = 0.0
        
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) { }
    
    
    class PreviewView: UIView {
        override class var layerClass: AnyClass {
            AVCaptureVideoPreviewLayer.self
        }
        var videoPreviewLayer: AVCaptureVideoPreviewLayer {
            return layer as! AVCaptureVideoPreviewLayer
        }
    }
}
