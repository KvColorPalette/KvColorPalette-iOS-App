//
//  PalletPager.swift
//  kv-ios-color-pallet-app
//
//  Created by Kavimal Wijewardana on 12/30/24.
//
import SwiftUI
import kv_ios_color_pallet

public struct PalletPager: View {
   
    @State var selectedColor: Color = .white
    
    public var body: some View {
        VStack {
            HStack {
                Text("Color Pallet")
                    .font(.system(size: 40, weight: .semibold))
                    .foregroundColor(.black)
                
                Spacer()
            }
            .padding([.leading, .trailing], 10)
            
            let matPackage = MatPackage()
            
            HStack {
                VStack {
                    ColorPalletRow(givenColor: matPackage.matRed, selectedColor: $selectedColor)
                    ColorPalletRow(givenColor: matPackage.matRose, selectedColor: $selectedColor)
                    ColorPalletRow(givenColor: matPackage.matLPurple, selectedColor: $selectedColor)
                    ColorPalletRow(givenColor: matPackage.matDPurple, selectedColor: $selectedColor)
                    ColorPalletRow(givenColor: matPackage.matDBlue, selectedColor: $selectedColor)
                    ColorPalletRow(givenColor: matPackage.matLBlue, selectedColor: $selectedColor)
                    ColorPalletRow(givenColor: matPackage.matLLBlue, selectedColor: $selectedColor)
                    ColorPalletRow(givenColor: matPackage.matLCyan, selectedColor: $selectedColor)
                    ColorPalletRow(givenColor: matPackage.matDCyan, selectedColor: $selectedColor)
                    ColorPalletRow(givenColor: matPackage.matDGreen, selectedColor: $selectedColor)
                    ColorPalletRow(givenColor: matPackage.matLGreen, selectedColor: $selectedColor)
                    ColorPalletRow(givenColor: matPackage.matLLGreen, selectedColor: $selectedColor)
                    ColorPalletRow(givenColor: matPackage.matYellow, selectedColor: $selectedColor)
                    ColorPalletRow(givenColor: matPackage.matGold, selectedColor: $selectedColor)
                    ColorPalletRow(givenColor: matPackage.matOrange, selectedColor: $selectedColor)
                }
                .padding()
                
                Spacer()
            }
            .padding([.leading, .trailing], 10)
            .padding(.top, -20)
            
            ColorDetailRow(selectedColor: selectedColor)
            
            Spacer()
        }
    }
}

struct ColorPalletRow: View {
    
    @Binding var selectedColor: Color
    private var givenColor: KvColor
    private var colorList: [ColorItem] = []
    
    init(givenColor: KvColor, selectedColor: Binding<Color>) {
        self.givenColor = givenColor
        _selectedColor = selectedColor
        let colors = KvColorPallet().generateColorPallet(givenColor: self.givenColor)
        colors.forEach { color in
            colorList.append(ColorItem(color: color))
        }
    }
    
    var body: some View {
        HStack {
            ForEach(colorList, id: \.id) { colorItem in
                ColorBox(
                    givenColor: colorItem.color,
                    selectedColor: selectedColor,
                    onSelect: { pickedColor in
                        selectedColor = pickedColor
                    }
                )
                .padding(-4)
            }
        }
    }
}

#Preview {
    PalletPager()
}
