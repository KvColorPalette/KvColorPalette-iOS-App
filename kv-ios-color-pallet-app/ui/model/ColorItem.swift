//
//  ColorItem.swift
//  kv-ios-color-pallet-app
//
//  Created by Kavimal Wijewardana on 12/30/24.
//
import Foundation
import SwiftUICore

public struct ColorItem {
    var id: String = UUID().uuidString
    var color: Color
    
    public init(color: Color) {
        self.color = color
    }
}

