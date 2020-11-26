//
//  ContentView.swift
//  DisableMenuCommandTest
//
//  Created by Angelo Stavrow on 2020-11-26.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("isDisabled") var isDisabled: Bool = false

    var body: some View {
        VStack(spacing: 16) {
            Text("The thing is currently \(isDisabled ? "disabled" : "enabled").")
            Button(action: {
                self.isDisabled.toggle()
            }, label: {
                Text(isDisabled ? "Enable" : "Disable")
            })
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
