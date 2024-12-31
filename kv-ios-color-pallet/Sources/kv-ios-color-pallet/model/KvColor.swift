//
//  KvColor.swift
//  kv-ios-color-pallet
//
//  Created by Kavimal Wijewardana on 12/27/24.
//

import Foundation
import SwiftUICore

public struct KvColor {
    public var colorName: String
    public var colorPackage: ColorPackageType = ColorPackageType.PK_0
    public var color: Color
    public var colorHex: String
    public var colorHexWithAlpha: String
    
    public init(colorName: String, color: Color) {
        self.colorName = colorName
        self.colorPackage = ColorPackageType.PK_0
        self.color = color
        self.colorHex = ColorUtil.getHex(color: color)
        self.colorHexWithAlpha = ColorUtil.getHexWithAlpha(color: color)
    }
    
    public init(colorName: String, colorPackage: ColorPackageType, color: Color) {
        self.colorName = colorName
        self.colorPackage = colorPackage
        self.color = color
        self.colorHex = ColorUtil.getHex(color: color)
        self.colorHexWithAlpha = ColorUtil.getHexWithAlpha(color: color)
    }
    
    public init(colorName: String, colorPackage: ColorPackageType, color: Color, colorHex: String, colorHexWithAlpha: String) {
        self.colorName = colorName
        self.colorPackage = colorPackage
        self.color = color
        self.colorHex = colorHex
        self.colorHexWithAlpha = colorHexWithAlpha
    }
    
    public func alphaChange(modifyAlpha: Double) -> KvColor {
        if modifyAlpha == 1 {
            return self
        } else {
            let modifiedColor = color.opacity(modifyAlpha)
            return KvColor(colorName: colorName, colorPackage: colorPackage, color: modifiedColor, colorHex: colorHex, colorHexWithAlpha: colorHexWithAlpha)
        }
    }
}

