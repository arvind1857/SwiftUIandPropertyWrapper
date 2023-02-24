//
//  User.swift
//  EnviornmentObject
//
//  Created by Arvind Kumar Seth on 09/02/23.
//

import Foundation

class User: ObservableObject {
    @Published var name: String = String()
    @Published var id: Int = Int()
}
