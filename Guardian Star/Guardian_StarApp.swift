//
//  Guardian_StarApp.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/9/23.
//

import SwiftUI

@main
struct Guardian_StarApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @StateObject private var rootController = RootController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .equatable()
                .environmentObject(rootController)
                .environment(\.colorScheme, .light)
        }
    }
}
