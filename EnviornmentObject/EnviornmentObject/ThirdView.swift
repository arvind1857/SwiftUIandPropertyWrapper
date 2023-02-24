//
//  ThirdView.swift
//  EnviornmentObject
//
//  Created by Arvind Kumar Seth on 09/02/23.
//

import SwiftUI

struct ThirdView: View {
    @EnvironmentObject var user: User
    @EnvironmentObject var contact: Contacts
    
    var body: some View {
        Text("Hey! \(user.name), your mobile no is - \(contact.mobile) and id is \(user.id)")
            .font(.system(.title, weight: .bold))
            .foregroundColor(.purple)
            .padding()
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
            .environmentObject(User())
    }
}
