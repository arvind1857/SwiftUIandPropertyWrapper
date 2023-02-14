//
//  ContentView.swift
//  SwiftUIStack
//
//  Created by Arvind Seth on 14/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .foregroundColor(.purple)
                    .frame(width: 200, height: 200)
                Image("profile")
                    .frame(width: 150, height: 150)
                    .cornerRadius(75)
                    .scaledToFit()
            }
            Text("A Medium User")
                .font(.system(size: 30, weight: .bold))
            Spacer()
                .frame(height: 30)

            HStack {
                Button {}
            label: {
                Label("Video", systemImage: "video.fill")
            }
            .frame(width: 180, height: 45)
            .foregroundColor(Color.white)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(.indigo))

                Spacer()

                Button {}
            label: {
                Label("Chat", systemImage: "message.fill")
            }
            .frame(width: 180, height: 45)
            .foregroundColor(Color.white)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(.teal))
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
