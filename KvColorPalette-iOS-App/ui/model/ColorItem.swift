//
//  ColorItem.swift
//  KV Color Palette
//
//  Created by Kavimal Wijewardana on 12/30/24.
//
import Foundation
import SwiftUI

public struct ColorItem {
    var id: String = UUID().uuidString
    var color: Color
    
    public init(color: Color) {
        self.color = color
    }
}

