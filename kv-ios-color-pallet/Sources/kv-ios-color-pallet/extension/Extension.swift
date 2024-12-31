//
//  Extension.swift
//  kv-ios-color-pallet
//
//  Created by Kavimal Wijewardana on 12/27/24.
//
import SwiftUICore
import UIKit

internal extension Color {
    /**
     * Accept hex value to generate color
     * @param hex [UInt] interger value of hex
     * @param alpha [Double] double value of opacity of the color
     */
    init(hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
    
    /**
     * Seperate rgb (red, green, blue) colors of given color's components
     */
    var rgb: (red: CGFloat, green: CGFloat, blue: CGFloat, opacity: CGFloat) {
        typealias uiColor = UIColor
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var opasity: CGFloat = 0
        
        guard uiColor(self).getRed(&red, green: &green, blue: &blue, alpha: &opasity) else {
            return (0,0,0,0)
        }
        
        return (red, green, blue, opasity)
    }
    
    /**
     * Return hex value of the color
     */
    var hex: String {
        String(
            format: "#%02x%02x%02x",
            Int(rgb.red * 255),
            Int(rgb.green * 255),
            Int(rgb.blue * 255)
        )
    }
    
    /**
     * Return hex value with alpha of the color
     */
    var hexWithAlpha: String {
        String(
            format: "#%02x%02x%02x%02x",
            Int(rgb.red * 255),
            Int(rgb.green * 255),
            Int(rgb.blue * 255),
            Int(rgb.opacity * 255)
        )
    }
}
