//
//  ColorPackage.swift
//  kv-ios-color-pallet
//
//  Created by Kavimal Wijewardana on 12/27/24.
//
import Foundation
import SwiftUICore

protocol ColorPackageProtocol {
    //static func getInstance() -> ColorPackage
    func getColorList() -> [KvColor]
}

public class ColorPackageBase: ColorPackageProtocol {
    
    /**
    * Get a list of colors from the color package.
    *
    * @return A list of colors.
    */
    func getColorList() -> [KvColor] {
        return []
    }
    
    /**
    * Compare a given color with the colors in the color package.
    *
    * @param givenColor The color to compare.
    * @return A color compare result. This include the most matching color, distance to the
    * most matching color and the matched color is exact to the given color
    */
    public func compareColor(givenColor: Color) -> ColorCompareResult {
        var closestColor = MatPackage().matWhite
        var shortestDistance: Float? = nil
        var colorCompareResult: ColorCompareResult = ColorCompareResult(isExactMatch: false)
        
        getColorList().forEach { comparingColor in
            let colorDistance = ColorUtil.getColorDistace(colorOne: givenColor, colorTwo: comparingColor.color)
            
            if colorDistance == 0.0 {
                colorCompareResult.isExactMatch = true
                colorCompareResult.colorDistance = colorDistance
                colorCompareResult.matchedColor = comparingColor
                return
            } else {
                if shortestDistance != nil {
                    if colorDistance < shortestDistance! {
                        shortestDistance = colorDistance
                        closestColor = comparingColor
                    }
                } else {
                    shortestDistance = colorDistance
                    closestColor = comparingColor
                }
            }
        }
        
        if colorCompareResult.isExactMatch {
            return colorCompareResult
        } else {
            colorCompareResult.colorDistance = shortestDistance!
            colorCompareResult.matchedColor = closestColor
            
            return colorCompareResult
        }
    }
    
    /**
    * Get a color from the color package using color name.
    *
    * @param colorName The name of the color.
    * @return A color.
    */
    public func getColor(colorName: String) -> KvColor {
        return getColorList().first { $0.colorName == colorName } ?? MatPackage().matWhite
    }
}
