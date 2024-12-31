//
//  File.swift
//  kv-ios-color-pallet
//
//  Created by Kavimal Wijewardana on 12/31/24.
//

import Foundation
import SwiftUICore

public struct AppThemePallet {
    let light: ThemeColorPallet
    let dark: ThemeColorPallet
    
    public init(light: ThemeColorPallet, dark: ThemeColorPallet) {
        self.light = light
        self.dark = dark
    }
}

public struct ThemeColorPallet {
    let primary: Color
    let secondary: Color
    let tertiary: Color
    let background: Color
    let onPrimary: Color
    let onSecondary: Color
    
    public init(primary: Color, secondary: Color, tertiary: Color, background: Color, onPrimary: Color, onSecondary: Color) {
        self.primary = primary
        self.secondary = secondary
        self.tertiary = tertiary
        self.background = background
        self.onPrimary = onPrimary
        self.onSecondary = onSecondary
    }
}
