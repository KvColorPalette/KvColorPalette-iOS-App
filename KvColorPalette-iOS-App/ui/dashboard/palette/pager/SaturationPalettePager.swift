//
//  SaturationPalettePager.swift
//  KV Color Palette
//
//  Created by Kavimal Wijewardana on 1/8/25.
//
import SwiftUI
import KvColorPalette_iOS

public struct SaturationPalettePager: View {
    
    @State var selectedColor: Color = .white
    
    public var body: some View {
        VStack {
            HeadingTitleView(titleText: "Saturation Palette")
            
            let matPackage = MatPackage()
            
            HStack {
                VStack {
                    SaturationPaletteColorRow(givenColor: matPackage.matRed, selectedColor: $selectedColor)
                    SaturationPaletteColorRow(givenColor: matPackage.matRose, selectedColor: $selectedColor)
                    SaturationPaletteColorRow(givenColor: matPackage.matLPurple, selectedColor: $selectedColor)
                    SaturationPaletteColorRow(givenColor: matPackage.matDPurple, selectedColor: $selectedColor)
                    SaturationPaletteColorRow(givenColor: matPackage.matDBlue, selectedColor: $selectedColor)
                    SaturationPaletteColorRow(givenColor: matPackage.matLBlue, selectedColor: $selectedColor)
                    SaturationPaletteColorRow(givenColor: matPackage.matLLBlue, selectedColor: $selectedColor)
                    SaturationPaletteColorRow(givenColor: matPackage.matLCyan, selectedColor: $selectedColor)
                    SaturationPaletteColorRow(givenColor: matPackage.matDCyan, selectedColor: $selectedColor)
                    SaturationPaletteColorRow(givenColor: matPackage.matDGreen, selectedColor: $selectedColor)
                    SaturationPaletteColorRow(givenColor: matPackage.matLGreen, selectedColor: $selectedColor)
                    SaturationPaletteColorRow(givenColor: matPackage.matLLGreen, selectedColor: $selectedColor)
                    SaturationPaletteColorRow(givenColor: matPackage.matYellow, selectedColor: $selectedColor)
                    SaturationPaletteColorRow(givenColor: matPackage.matGold, selectedColor: $selectedColor)
                    SaturationPaletteColorRow(givenColor: matPackage.matOrange, selectedColor: $selectedColor)
                }
                .padding()
                
                Spacer()
            }
            .padding([.leading, .trailing], 10)
            .padding(.top, -15)
            
            ColorDetailRow(selectedColor: selectedColor)
            
            Spacer()
        }
    }
}

struct SaturationPaletteColorRow: View {
    
    @Binding var selectedColor: Color
    private var givenColor: KvColor
    private var colorList: [ColorItem] = []
    
    init(givenColor: KvColor, selectedColor: Binding<Color>) {
        self.givenColor = givenColor
        _selectedColor = selectedColor
        let colors = KvColorPalette.instance.generateSaturationColorPalette(givenColor: self.givenColor.color)
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
    SaturationPalettePager()
}
