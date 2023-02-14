//
//  ContentView.swift
//  BindingSample
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
                    .font(.system(size: 20))
                CardioOptionChildView(runStatus: $runStatus, isRunning: $isRunning)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
