//
//  ContentView.swift
//  iOS-VolumeHelper
//
//  Created by Brad Kang on 2021-02-12.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored Properties
    @State private var fromShape = ShapeList.cylinder
    @State private var input: String = ""
    @State private var toShape = ShapeList.cylinder
    
    // MARK: Computed Properties

    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
