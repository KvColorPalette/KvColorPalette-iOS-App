//
//  KvColorPaletteApp.swift
//  KV Color Palette
//
//  Created by Kavimal Wijewardana on 12/27/24.
//

import SwiftUI

@main
struct KvColorPaletteApp: App {
    
    @UIApplicationDelegateAdaptor(KvColorPaletteAppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            DashboardTabView()
        }
    }
}
