//
//  Quizlet_ishApp.swift
//  Quizlet-ish
//
//  Created by Jose Fernandez-Rocha on 11/4/22.
//

import SwiftUI
import Firebase

@main
struct Quizlet_ishApp: App {
    init() {
            FirebaseApp.configure()
          }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
