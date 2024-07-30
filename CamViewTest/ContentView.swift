//
//  ContentView.swift
//  CamViewTest
//
//  Created by 김재훈 on 7/30/24.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    
    var myCam = Cam()
    
    var body: some View {
        myCam.camPreview
            .onAppear(perform: {
                myCam.setUpCam()
            })
    }
}

#Preview {
    ContentView()
}
