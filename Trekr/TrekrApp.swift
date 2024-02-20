//
//  TrekrApp.swift
//  Trekr
//
//  Created by Emre Yilmaz on 2024-02-18.
//

import SwiftUI

@main
struct TrekrApp: App {
    
    var body: some Scene {
        WindowGroup {
            ContentView(location: Locations().primary)
        }
    }
    
}
