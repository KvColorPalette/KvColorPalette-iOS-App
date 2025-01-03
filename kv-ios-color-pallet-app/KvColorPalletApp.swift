//
//  kv_ios_color_pallet_appApp.swift
//  kv-ios-color-pallet-app
//
//  Created by Kavimal Wijewardana on 12/27/24.
//

import SwiftUI

@main
struct KvColorPalletApp: App {
    
    @UIApplicationDelegateAdaptor(KvColorPalletAppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            MainTabView()
        }
    }
}
