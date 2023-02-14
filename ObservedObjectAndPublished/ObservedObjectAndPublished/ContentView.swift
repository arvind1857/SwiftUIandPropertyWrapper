//
//  UserModel.swift
//  ObservedObjectAndPublished
//
//  Created by Arvind Kumar Seth on 06/02/23.


import SwiftUI

struct ContentView: View {
    @ObservedObject private var user: User = User()
    
    var body: some View {
        VStack {
            Text("Welcome \(user.name)")
                .font(.title)
                .foregroundColor(.white)
            
            
            TextField("user name", text: $user.name)
                .textFieldStyle(.roundedBorder)
                .padding()
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.teal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
