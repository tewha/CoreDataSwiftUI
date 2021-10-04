//
//  CoreDataSwiftUIApp.swift
//  Shared
//
//  Created by Steven Fisher on 2021-10-04.
//

import SwiftUI

@main
struct CoreDataSwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
