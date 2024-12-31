//
//  AlphaPalletPager.swift
//  kv-ios-color-pallet-app
//
//  Created by Kavimal Wijewardana on 12/30/24.
//
import SwiftUI
import kv_ios_color_pallet

public struct AlphaPalletPager: View {
    
    public var body: some View {
        VStack {
            Text("Alpha Pallet")
            
            let matPackage = MatPackage()
            
            VStack {
                AlphaPalletColorRow(givenColor: matPackage.matRed)
                AlphaPalletColorRow(givenColor: matPackage.matRose)
                AlphaPalletColorRow(givenColor: matPackage.matLPurple)
                AlphaPalletColorRow(givenColor: matPackage.matDPurple)
                AlphaPalletColorRow(givenColor: matPackage.matDBlue)
                AlphaPalletColorRow(givenColor: matPackage.matLBlue)
                AlphaPalletColorRow(givenColor: matPackage.matLLBlue)
                AlphaPalletColorRow(givenColor: matPackage.matLCyan)
                AlphaPalletColorRow(givenColor: matPackage.matDCyan)
                AlphaPalletColorRow(givenColor: matPackage.matDGreen)
                AlphaPalletColorRow(givenColor: matPackage.matLGreen)
                AlphaPalletColorRow(givenColor: matPackage.matLLGreen)
                AlphaPalletColorRow(givenColor: matPackage.matYellow)
                AlphaPalletColorRow(givenColor: matPackage.matGold)
                AlphaPalletColorRow(givenColor: matPackage.matOrange)
            }
            .padding()
        }
    }
}

struct AlphaPalletColorRow: View {
    
    private var givenColor: KvColor
    private var colorList: [ColorItem] = []
    
    init(givenColor: KvColor) {
        self.givenColor = givenColor
        let colors = KvColorPallet().generateAlphaColorPallet(givenColor: self.givenColor.color)
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
    AlphaPalletPager()
}
