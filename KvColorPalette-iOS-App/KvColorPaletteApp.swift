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
    // This ID for refresh the view for theme change event.
    @State var viewRefreshId = UUID()
    
    var body: some Scene {
        WindowGroup {
            DashboardTabView(viewRefreshId: $viewRefreshId)
        }
    }
}
