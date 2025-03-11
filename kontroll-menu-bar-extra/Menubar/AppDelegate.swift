//
//  AppDelegate.swift
//  kontroll-menu-bar-extra
//
//  Created by Brian Lehrer on 3/10/25.
//

import SwiftUI

class AppDelegate: NSObject, NSApplicationDelegate {
    static var popover = NSPopover()
    var statusBar:StatusBarController!
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        Self.popover.contentViewController = NSHostingController(
            rootView: PopoverView()
                .environment(
                    \.managedObjectContext,
                    PersistenceController.shared.container.viewContext))
        Self.popover.behavior = .transient
        statusBar = StatusBarController(Self.popover)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
    }
}

