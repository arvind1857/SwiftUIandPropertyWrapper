//
//  ContentView.swift
//  EnviornmentObject
//
//  Created by Arvind Kumar Seth on 09/02/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var user: User = User()
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("Welcome \(user.name)")
                    .font(.system(.title, weight: .bold))
                TextField("user", text: $user.name)
                    .textFieldStyle(.roundedBorder)
                
                Spacer()
                
                Button(action: {
                    print("Navigate Button Click from First View")
                }, label: {
                    NavigationLink(destination: SecondView()) {
                        Text("Click to Navigate")
                            .foregroundColor(.purple)
                            .font(.system(size: 25, weight: .bold))
                        
                    }
                })
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.teal)
        }
        .environmentObject(user)
        
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
