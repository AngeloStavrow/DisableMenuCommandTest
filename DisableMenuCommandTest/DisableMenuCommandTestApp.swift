//
//  DisableMenuCommandTestApp.swift
//  DisableMenuCommandTest
//
//  Created by Angelo Stavrow on 2020-11-26.
//

import SwiftUI

@main
struct DisableMenuCommandTestApp: App {
    @AppStorage("isDisabled") var isDisabled: Bool = false

    var body: some Scene {
        WindowGroup {
            ContentView()
                .frame(width: 480, height: 320, alignment: .center)
                .background(isDisabled ? Color.red.opacity(0.5) : Color.green.opacity(0.5))
        }
        .commands {
            CommandGroup(after: .newItem) {
                Button("Do The Thing") {
                    print("I did the thing!")
                }
                .disabled(isDisabled)   // 👈 This is ignored. ¯\_(ツ)_/¯
                .keyboardShortcut("d", modifiers: [.command])
            }
        }
    }
}
