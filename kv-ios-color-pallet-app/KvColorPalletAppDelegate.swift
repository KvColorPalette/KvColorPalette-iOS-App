//
//  KvColorPalletAppDelegate.swift
//  KV Color Pallet
//
//  Created by Kavimal Wijewardana on 1/3/25.
//

import Foundation
import UIKit
import KvColorPallet_iOS

@MainActor
class KvColorPalletAppDelegate: UIResponder, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        KvColorPallet.initialize(givenColor: MatPackage().matRed.color)
        
        return true
    }
}
