//
//  CardioOptionChildView.swift
//  SwiftUIBindingPropertyWrapper
//
//  Created by Arvind Kumar Seth on 01/02/23.
//

import SwiftUI

struct CardioOptionChildView: View {
    
    @Binding var runStatus: String
    @Binding var isRunning: Bool
    
    var body: some View {
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

struct CardioOptionChildView_Previews: PreviewProvider {
    static var previews: some View {
        CardioOptionChildView(runStatus: .constant("I am walking"), isRunning: .constant(false))
    }
}
