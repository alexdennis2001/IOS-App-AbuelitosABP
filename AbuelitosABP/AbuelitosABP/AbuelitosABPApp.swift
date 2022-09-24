//
//  AbuelitosABPApp.swift
//  AbuelitosABP
//
//  Created by Alejandro Dennis on 08/09/22.
//

import SwiftUI

@main
struct AbuelitosABPApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
//            ContentView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
            LoginControllerView()
        }
    }
}
