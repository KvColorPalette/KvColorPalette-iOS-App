//
//  PalletPager.swift
//  kv-ios-color-pallet-app
//
//  Created by Kavimal Wijewardana on 12/30/24.
//
import SwiftUI
import kv_ios_color_pallet

public struct PalletPager: View {
   
    public var body: some View {
        VStack {
            Text("Color Pallet")
            
            let matPackage = MatPackage()
            
            VStack {
                ColorPalletRow(givenColor: matPackage.matRed)
                ColorPalletRow(givenColor: matPackage.matRose)
                ColorPalletRow(givenColor: matPackage.matLPurple)
                ColorPalletRow(givenColor: matPackage.matDPurple)
                ColorPalletRow(givenColor: matPackage.matDBlue)
                ColorPalletRow(givenColor: matPackage.matLBlue)
                ColorPalletRow(givenColor: matPackage.matLLBlue)
                ColorPalletRow(givenColor: matPackage.matLCyan)
                ColorPalletRow(givenColor: matPackage.matDCyan)
                ColorPalletRow(givenColor: matPackage.matDGreen)
                ColorPalletRow(givenColor: matPackage.matLGreen)
                ColorPalletRow(givenColor: matPackage.matLLGreen)
                ColorPalletRow(givenColor: matPackage.matYellow)
                ColorPalletRow(givenColor: matPackage.matGold)
                ColorPalletRow(givenColor: matPackage.matOrange)
            }
            .padding()
        }
    }
}

struct ColorPalletRow: View {
    
    private var givenColor: KvColor
    private var colorList: [ColorItem] = []
    
    init(givenColor: KvColor) {
        self.givenColor = givenColor
        let colors = KvColorPallet().generateColorPallet(givenColor: self.givenColor)
        colors.forEach { color in
            colorList.append(ColorItem(color: color))
        }
    }
    
    var body: some View {
        HStack {
            ForEach(colorList, id: \.id) { colorItem in
                ColorBox(givenColor: colorItem.color)
            }
        }
    }
}

#Preview {
    PalletPager()
}
