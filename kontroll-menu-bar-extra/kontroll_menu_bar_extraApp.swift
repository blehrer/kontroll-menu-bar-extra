//
//  kontroll_menu_bar_extraApp.swift
//  kontroll-menu-bar-extra
//
//  Created by Brian Lehrer on 3/10/25.
//

import SwiftUI

@main
struct kontroll_menu_bar_extraApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self)
    var appDelegate
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(
                    \.managedObjectContext,
                    persistenceController.container.viewContext)
        }
    }
}
