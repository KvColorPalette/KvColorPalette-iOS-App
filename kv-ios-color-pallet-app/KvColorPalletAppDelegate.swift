//
//  KvColorPalletAppDelegate.swift
//  KV Color Pallet
//
//  Created by Kavimal Wijewardana on 1/3/25.
//

import Foundation
import UIKit
import SwiftUICore
import KvColorPallet_iOS

@MainActor
class KvColorPalletAppDelegate: UIResponder, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // Initiate the KvColorPallet-iOS with color `Green` as base color
        KvColorPallet.initialize(basicColor: MatPackage().matDGreen.color)
        
        return true
    }
}


