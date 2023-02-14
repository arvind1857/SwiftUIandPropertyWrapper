//
//  ContentView.swift
//  StateSample
//
//  Created by Arvind Seth on 14/02/23.
//

import SwiftUI

struct ContentView: View {
    @State private var runStatus: String = "I am walking"
    @State private var isRunning: Bool = false
    
    var body: some View {
        ZStack {
            Image("bg")
            VStack {
                Text(runStatus)
                Spacer()
                    .frame(height: 15)
                Button(action: {
                    self.isRunning.toggle()
                    self.runStatus = self.isRunning ? "I am running" : "I am walking"
                }) {
                    Image(self.isRunning ? "run": "walk")
                        .resizable()
                        .frame(width: 60, height: 60, alignment: .center)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
