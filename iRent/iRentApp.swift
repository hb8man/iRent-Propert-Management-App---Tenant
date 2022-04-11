//
//  iRentApp.swift
//  iRent
//
//  Created by William Bateman on 4/3/22.
//

import SwiftUI
import Firebase

@main
struct iRentApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
