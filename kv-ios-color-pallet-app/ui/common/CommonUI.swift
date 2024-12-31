//
//  CommonUI.swift
//  kv-ios-color-pallet-app
//
//  Created by Kavimal Wijewardana on 12/30/24.
//
import SwiftUI

public struct ColorBox: View {
    
    private var givenColor: Color = .blue
    
    public init (givenColor: Color) {
        self.givenColor = givenColor
    }
    
    public var body: some View {
        Rectangle()
            .fill(givenColor)
            .frame(width: 25, height: 25)
    }
}

#Preview {
    ColorBox(givenColor: Color.blue)
}
