//
//  File.swift
//  kv-ios-color-pallet
//
//  Created by Kavimal Wijewardana on 12/31/24.
//

import Foundation
import SwiftUICore

public struct AppThemePallet {
    public let light: ThemeColorPallet
    public let dark: ThemeColorPallet
    
    public init(light: ThemeColorPallet, dark: ThemeColorPallet) {
        self.light = light
        self.dark = dark
    }
}

public struct ThemeColorPallet {
    public let primary: Color
    public let secondary: Color
    public let tertiary: Color
    public let background: Color
    public let onPrimary: Color
    public let onSecondary: Color
    
    public init(primary: Color, secondary: Color, tertiary: Color, background: Color, onPrimary: Color, onSecondary: Color) {
        self.primary = primary
        self.secondary = secondary
        self.tertiary = tertiary
        self.background = background
        self.onPrimary = onPrimary
        self.onSecondary = onSecondary
    }
}
