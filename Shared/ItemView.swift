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
