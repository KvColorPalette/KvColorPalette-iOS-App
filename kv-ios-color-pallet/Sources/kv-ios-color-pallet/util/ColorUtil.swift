//
//  ColorUtil.swift
//  kv-ios-color-pallet
//
//  Created by Kavimal Wijewardana on 12/27/24.
//
import Foundation
import SwiftUICore

public class ColorUtil {
    
    public static func getColorFromHex(colorHex: UInt) -> Color {
        return Color(hex: colorHex)
    }
    
    public static func getHex(color: Color) -> String {
        return color.hex
    }
    
    public static func getHexWithAlpha(color: Color) -> String {
        return color.hexWithAlpha
    }
    
    public static func getColorDistace(colorOne: Color, colorTwo: Color) -> Float {
        let redDistance = abs(colorOne.rgb.red - colorTwo.rgb.red)
        let greenDistance = abs(colorOne.rgb.green - colorTwo.rgb.green)
        let blueDistance = abs(colorOne.rgb.blue - colorTwo.rgb.blue)
        let opacityDistance = abs(colorOne.rgb.opacity - colorTwo.rgb.opacity)
        
        let sum = redDistance + greenDistance + blueDistance + opacityDistance
        
        return Float(sum)
    }
}
