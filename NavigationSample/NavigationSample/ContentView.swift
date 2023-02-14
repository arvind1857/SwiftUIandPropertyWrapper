//
//  ContentView.swift
//  NavigationSample
//
//  Created by Arvind Seth on 14/02/23.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("This is first View")
                Spacer()

                NavigationLink(destination: SecondView()) {
                    Text("Click to Navigate")
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                        .frame(width: 300, height: 45)
                        .background(RoundedRectangle(cornerRadius: 6)
                            .fill(.red))
                }
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.regularMaterial)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
