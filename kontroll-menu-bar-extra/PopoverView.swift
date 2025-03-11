//
//  PopoverView.swift
//  kontroll-menu-bar-extra
//
//  Created by Brian Lehrer on 3/10/25.
//

import SwiftUI

var fetchKeyboard: NSFetchRequest<ZsaKeyboard> = NSFetchRequest<ZsaKeyboard>(entityName: "ZsaKeyboard")

struct PopoverView: View {
    @Environment(\.managedObjectContext)
    var objectContext
//    @FetchRequest(fetchRequest: fetchKeyboard
//    )
    @FetchRequest(sortDescriptors: [], animation: .default)
    var zsaKeyboard: FetchedResults<ZsaKeyboard>
    
    
    @State var currentLayer: String?
    @State var currentLayerIndex: Int?
    @State var keyboardName: String?
    
    var body: some View {
        VStack(alignment: .leading) {
            Text($currentLayer.wrappedValue ?? "No Layer Selected")
            Text($currentLayerIndex.wrappedValue.map(String.init) ?? "No Index Selected")
            Text($keyboardName.wrappedValue ?? "No Keyboard Selected")
        }.padding(20)
    }
}


#Preview {
    PopoverView.init(currentLayer: "layer 0", currentLayerIndex: 0, keyboardName: "ergodox_ez")
}
