//
//  ContentView.swift
//  ScrabbleBuddy
//
//  Created by Cameron Candelori on 12/21/23.
//

import SwiftUI
import ARKit

struct ContentView: View {
    var body: some View {
        ARViewContainer().edgesIgnoringSafeArea(.all)
    }
}

struct ARViewContainer: UIViewRepresentable {
    func makeUIView(context: Context) -> ARSCNView {
        let arView = ARSCNView()
        arView.session.run(ARWorldTrackingConfiguration())
        return arView
    }

    func updateUIView(_ uiView: ARSCNView, context: Context) {}
}

#Preview {
    ContentView()
}
