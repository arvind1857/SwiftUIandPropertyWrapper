//
//  SecondView.swift
//  EnviornmentObject
//
//  Created by Arvind Kumar Seth on 09/02/23.
//

import SwiftUI

struct SecondView: View {
    @EnvironmentObject var user: User

    var body: some View {
            VStack {
                Spacer()
                if user.id != 0 {
                    Text("Your user id is - \(user.id)")
                        .font(.system(.title))
                }
                
                Button (action: {
                    user.id = Int.random(in: 1...1000)
                }, label: {
                    Text("Generate ID")
                })
                .frame(width: 300, height: 45)

                .foregroundColor(Color.white)
                .font(.system(size: 20, weight: .bold))
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.red))
                
                Spacer()
                
                Button(action: {
                    print("Navigate Button Click from Second View")
                }, label: {
                    NavigationLink(destination: ThirdView()){
                        Text("Click to Navigate")
                            .foregroundColor(.purple)
                            .font(.system(size: 25, weight: .bold))
                    }
                })
        }
        .environmentObject(user)
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
            .environmentObject(User())
    }
}
