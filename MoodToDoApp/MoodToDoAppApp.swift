//
//  MoodToDoAppApp.swift
//  MoodToDoApp
//
//  Created by Injila Adil on 7/31/23.
//

import SwiftUI

@main
struct MoodToDoAppApp: App {
    let persistenceController = PersistenceController.shared
    var body: some Scene {

        WindowGroup {
            SplashScreen()
            //ContentView().environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
