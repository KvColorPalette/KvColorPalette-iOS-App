//
//  ColorCompareResult.swift
//  kv-ios-color-pallet
//
//  Created by Kavimal Wijewardana on 12/27/24.
//
import Foundation
import SwiftUICore

/**
* Result of the color comparison functionality in kv-color-pallet library.
*/
public struct ColorCompareResult {
    public var isExactMatch: Bool = false
    public var colorDistance: Float = 0.0
    public var matchedColor: KvColor
    
    public init(isExactMatch: Bool = false, colorDistance: Float = 0.0) {
        self.isExactMatch = isExactMatch
        self.colorDistance = colorDistance
        self.matchedColor = KvColor(colorName: "DEFAULT", color: Color.white)
    }
    
    public init(isExactMatch: Bool, colorDistance: Float, matchedColor: KvColor) {
        self.isExactMatch = isExactMatch
        self.colorDistance = colorDistance
        self.matchedColor = matchedColor
    }
    
    public mutating func setIsExactMatch(isExactMatch: Bool) {
        self.isExactMatch = isExactMatch
    }
    
    public mutating func setColorDistance(colorDistance: Float) {
        self.colorDistance = colorDistance
    }
    
    public mutating func setMatchedColor(matchedColor: KvColor) {
        self.matchedColor = matchedColor
    }
}
