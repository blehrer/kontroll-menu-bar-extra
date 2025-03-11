//
//  StatusBarController.swift
//  kontroll-menu-bar-extra
//
//  Created by Brian Lehrer on 3/10/25.
//

import SwiftUI

class StatusBarController {
    @Environment(\.managedObjectContext)
    var objectContext
    @State var layerName: String?
    
    private(set) var statusBar: NSStatusBar
    private(set) var statusItem: NSStatusItem
    private(set) var popover: NSPopover

    init(_ popover: NSPopover) {
        self.popover = popover
        statusBar = .init()
        statusItem = statusBar.statusItem(
            withLength: NSStatusItem.variableLength)

        if let button = statusItem.button {
//            button.image = NSImage(
//                systemSymbolName: "shape.hexagram.fill",
//                accessibilityDescription: "ZSA - Status Bar")
            button.attributedTitle = NSAttributedString(string: layerName ?? "doink")
            button.action = #selector(togglePopover(_:))
            button.target = self
        }
    }

    @objc func togglePopover(_ sender: Any?) {
        if popover.isShown {
            popover.performClose(sender)
        } else {
            popover.show(
                relativeTo: statusItem.button!.bounds, of: statusItem.button!,
                preferredEdge: .maxY)
        }
    }
}
