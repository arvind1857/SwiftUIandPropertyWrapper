//
//  ContentView.swift
//  NavigationStackAndList
//
//  Created by Arvind Seth on 14/02/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationStack {
           List{
               NavigationLink("Asia", value: "1")
               NavigationLink("North America", value: "2")
               NavigationLink("Europe", value: "3")
           }.navigationDestination(for: String.self) { val in
               Text("Details of continent no. \(val)")
           }
           .navigationTitle("Continents")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


