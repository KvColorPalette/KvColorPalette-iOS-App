//
//  KvColor.swift
//  kv-ios-color-pallet
//
//  Created by Kavimal Wijewardana on 12/27/24.
//

import Foundation
import SwiftUICore

/**
* Color object that holds,
* name, package, hex, hex+alpha to the regular `Color` object
*
* @see Color
*/
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
    
    /**
    * Change the alpha of the color
    *
    * @param modifyAlpha The alpha value to be modified
    * @return The modified color
    */
    public func alphaChange(modifyAlpha: Double) -> KvColor {
        if modifyAlpha == 1 {
            return self
        } else {
            let modifiedColor = color.opacity(modifyAlpha)
            return KvColor(colorName: colorName, colorPackage: colorPackage, color: modifiedColor, colorHex: colorHex, colorHexWithAlpha: colorHexWithAlpha)
        }
    }
    
    /**
     * Change the color package of the color. `KvColor` object, color package will be changed and
     * this method will return the color with requested color package.
     *
     * @param colorPackage The new color package
     * @return The modified color
     */
    func changeColorPackage(colorPackage: ColorPackageType) -> KvColor {
        switch colorPackage {
        case ColorPackageType.PK_50:
            return Mat50Package().getColorList().first { $0.colorName == colorName } ?? MatPackage().matWhite
        case .PK_100:
            return Mat100Package().getColorList().first { $0.colorName == colorName } ?? MatPackage().matWhite
        case .PK_200:
            return Mat200Package().getColorList().first { $0.colorName == colorName } ?? MatPackage().matWhite
        case .PK_300:
            return Mat300Package().getColorList().first { $0.colorName == colorName } ?? MatPackage().matWhite
        case .PK_400:
            return Mat400Package().getColorList().first { $0.colorName == colorName } ?? MatPackage().matWhite
        case .PK_500:
            return MatPackage().getColorList().first { $0.colorName == colorName } ?? MatPackage().matWhite
        case .PK_600:
            return Mat600Package().getColorList().first { $0.colorName == colorName } ?? MatPackage().matWhite
        case .PK_700:
            return Mat700Package().getColorList().first { $0.colorName == colorName } ?? MatPackage().matWhite
        default :
            return MatPackage().matWhite
        }
    }
}

