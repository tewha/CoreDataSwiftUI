//
//  ItemView.swift
//  CoreDataSwiftUI
//
//  Created by Steven Fisher on 2021-10-04.
//

import SwiftUI

struct ItemView: View {
    @ObservedObject var item: Item

    var body: some View {
        List {
            TextField("Required:", text: Binding($item.name, "Missing Name"))
            
            // crashes here, because item.extra is Core Data optional
            TextField("Optional:", text: Binding($item.extra, "Missing Extra"))
            
            // Crash message:
            //
            //   CoreDataSwiftUI/Binding.swift:17: Fatal error: Unexpectedly found nil while unwrapping an Optional value
            //   2021-10-04 14:11:52.305020-0700 CoreDataSwiftUI[93670:2260260] CoreDataSwiftUI/Binding.swift:17: Fatal error: Unexpectedly found nil while unwrapping an Optional value

        }
    }

    init(item: Item) {
        self.item = item
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(item: Item())
    }
}
