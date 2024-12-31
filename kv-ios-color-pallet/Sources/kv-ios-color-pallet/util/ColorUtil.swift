//
//  ColorUtil.swift
//  kv-ios-color-pallet
//
//  Created by Kavimal Wijewardana on 12/27/24.
//
import Foundation
import SwiftUICore

public class ColorUtil {
    
    /**
     * Convert hex color to [Color]
     *
     * @param color hex color String
     * @return [Color]
     */
    public static func getColorFromHex(colorHex: UInt) -> Color {
        return Color(hex: colorHex)
    }
    
    /**
     * Get hex value of given color
     *
     * @param color [Color]
     * @return hex color String
     */
    public static func getHex(color: Color) -> String {
        return color.hex
    }
    
    /**
     * Get hex value of given color with alpha
     *
     * @param color [Color]
     * @return hex color String
     */
    public static func getHexWithAlpha(color: Color) -> String {
        return color.hexWithAlpha
    }
    
    /**
     * Get distance between two colors
     *
     * @param colorOne [Color]
     * @param colorTwo [Color]
     * @return distance between two colors
     */
    public static func getColorDistace(colorOne: Color, colorTwo: Color) -> Float {
        let redDistance = abs(colorOne.rgb.red - colorTwo.rgb.red)
        let greenDistance = abs(colorOne.rgb.green - colorTwo.rgb.green)
        let blueDistance = abs(colorOne.rgb.blue - colorTwo.rgb.blue)
        let opacityDistance = abs(colorOne.rgb.opacity - colorTwo.rgb.opacity)
        
        let sum = redDistance + greenDistance + blueDistance + opacityDistance
        
        return Float(sum)
    }
    
    /**
     * Get closest color to the given color from available color packages.
     * This compares the available colors and find out the closest `KvColor` to the given color.
     *
     * @param givenColor [Color]
     * @return [KvColor] closest color to the given color
     */
    public static func findClosestColor(givenColor: Color) -> KvColor {
        // Do comparison with 700 color list
        let colorMatch700 = Mat700Package().compareColor(givenColor: givenColor)
        if colorMatch700.isExactMatch {
            return colorMatch700.matchedColor
        } else {
            var shortestDistance = colorMatch700.colorDistance
            var closestColor = colorMatch700.matchedColor
            
            // Do comparison with 500(base) color list
            let colorMatch500 = MatPackage().compareColor(givenColor: givenColor)
            if colorMatch500.isExactMatch {
                return colorMatch500.matchedColor
            } else {
                if colorMatch500.colorDistance < shortestDistance {
                    shortestDistance = colorMatch500.colorDistance
                    closestColor = colorMatch500.matchedColor
                    
                    // Do comparison with 300 color list
                    let colorMatch300 = Mat300Package().compareColor(givenColor: givenColor)
                    if colorMatch300.isExactMatch {
                        return colorMatch300.matchedColor
                    } else {
                        if colorMatch300.colorDistance < shortestDistance {
                            shortestDistance = colorMatch300.colorDistance
                            closestColor = colorMatch300.matchedColor
                            
                            // Do comparison with 200 color list
                            let colorMatch200 = Mat200Package().compareColor(givenColor: givenColor)
                            if colorMatch200.isExactMatch {
                                return colorMatch200.matchedColor
                            } else {
                                if colorMatch200.colorDistance < shortestDistance {
                                    closestColor = colorMatch200.matchedColor
                                }
                            }
                        }
                    }
                }
            }
            
            return closestColor
        }
    }
}
