//
//  Cam.swift
//  CamViewTest
//
//  Created by 김재훈 on 7/30/24.
//

import AVFoundation
import SwiftUI

class Cam {
    var session = AVCaptureSession()
    var videoDeviceInput: AVCaptureDeviceInput!
    var output = AVCapturePhotoOutput()
    
    let camPreview: AnyView
    
    init() {
        camPreview = AnyView(CamPreviewView(session: session))
    }
    
    func setUpCam() {

        if let device = AVCaptureDevice.default(.builtInWideAngleCamera, for: .video, position: .back) {
            do {
                videoDeviceInput = try AVCaptureDeviceInput(device: device)
                
                if session.canAddInput(videoDeviceInput) {
                    session.addInput(videoDeviceInput)
                }
                
                if session.canAddOutput(output) {
                    session.addOutput(output)
                    //output.isHighResolutionCaptureEnabled = true
                    output.maxPhotoQualityPrioritization = .quality
                }
                
                session.startRunning()
                
            } catch {
                print(error.localizedDescription)
            }
        }
    }
}
