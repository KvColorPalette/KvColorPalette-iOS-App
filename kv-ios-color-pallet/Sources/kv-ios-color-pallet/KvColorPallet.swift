// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import SwiftUICore

/**
 * This is the kv-color-pallet android library.
 */
public class KvColorPallet {
    
    nonisolated(unsafe) public static var instance: KvColorPallet? = nil
    
    public init() {}
    
    public static func initialize() -> KvColorPallet {
        if instance == nil {
            instance = KvColorPallet()
        }
        return instance!
    }
    
    /**
     * Generate a list of colors with alpha values. According to the feeding color,
     * this method generate a list of colors with different alpha values.
     *
     * @param givenColor The color to generate the alpha values for.
     * @return A list of colors with alpha values.
     */
    public func generateAlphaColorPallet(givenColor: Color) -> [Color] {
        return [
            givenColor.opacity(1),
            givenColor.opacity(0.9),
            givenColor.opacity(0.8),
            givenColor.opacity(0.7),
            givenColor.opacity(0.6),
            givenColor.opacity(0.5),
            givenColor.opacity(0.4),
            givenColor.opacity(0.3),
            givenColor.opacity(0.2),
            givenColor.opacity(0.1),
        ]
    }
    
    /**
     * Generate a list of colors with pre-defined color packages. According to the feeding color,
     * this method generate a list of colors.
     *
     * @param givenColor The color to generate the color packages for.
     * @return A list of colors.
     */
    public func generateColorPallet(givenColor: KvColor, alphaChange: Double = 1) -> [Color] {
        return [
            Mat700Package().getColor(colorName: givenColor.colorName).alphaChange(modifyAlpha: alphaChange).color,
            Mat600Package().getColor(colorName: givenColor.colorName).alphaChange(modifyAlpha: alphaChange).color,
            MatPackage().getColor(colorName: givenColor.colorName).alphaChange(modifyAlpha: alphaChange).color,
            Mat400Package().getColor(colorName: givenColor.colorName).alphaChange(modifyAlpha: alphaChange).color,
            Mat300Package().getColor(colorName: givenColor.colorName).alphaChange(modifyAlpha: alphaChange).color,
            Mat200Package().getColor(colorName: givenColor.colorName).alphaChange(modifyAlpha: alphaChange).color,
            Mat100Package().getColor(colorName: givenColor.colorName).alphaChange(modifyAlpha: alphaChange).color,
            Mat50Package().getColor(colorName: givenColor.colorName).alphaChange(modifyAlpha: alphaChange).color
        ]
    }
    
    func generateThemeColorPallet() -> [Color]? {
        return nil
    }
}
