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
        
        // Retrieve the stored theme color from UserDefaults
        let currentThemeColor = AppUserDefaults.getInstance().retrieveString(key: AppUserDefaults.CURRENT_THEME_COLOR)
        
        // Initiate the KvColorPallet-iOS with color `Green` as base color
        if currentThemeColor != nil {
            guard let colorHex = currentThemeColor else { return true }
            if ColorUtil.validateColorHex(colorHex: colorHex) {
                let color = ColorUtil.getColorFromHexString(colorHex: colorHex)
                KvColorPalette.initialize(basicColor: color!)
            } else {
                KvColorPalette.initialize(basicColor: MatPackage().matDGreen.color)
            }
        } else {
            KvColorPalette.initialize(basicColor: MatPackage().matDGreen.color)
        }
        
        return true
    }
}


