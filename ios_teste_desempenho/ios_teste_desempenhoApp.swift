//
//  ios_teste_desempenhoApp.swift
//  ios_teste_desempenho
//
//  Created by Gabriel Luís Silva Pereira on 28/08/22.
//

import SwiftUI

@main
struct ios_teste_desempenhoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
