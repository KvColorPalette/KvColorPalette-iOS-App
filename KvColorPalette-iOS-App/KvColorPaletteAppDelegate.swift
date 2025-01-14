//
//  KvColorPalletAppDelegate.swift
//  KV Color Palette
//
//  Created by Kavimal Wijewardana on 1/3/25.
//

import Foundation
import UIKit
import SwiftUICore
import KvColorPalette_iOS

@MainActor
class KvColorPaletteAppDelegate: UIResponder, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // Initiate the KvColorPallet-iOS with color `Green` as base color
        KvColorPalette.initialize(basicColor: MatPackage().matDGreen.color)
        
        return true
    }
}


