//
//  BrightnessPalettePager.swift
//  KV Color Palette
//
//  Created by Kavimal Wijewardana on 1/8/25.
//
import SwiftUI
import KvColorPalette_iOS

public struct BrightnessPalettePager: View {
    
    @State var selectedColor: Color = .white
    
    public var body: some View {
        VStack {
            HeadingTitleView(titleText: "Brightness Palette")
            
            let matPackage = MatPackage()
            
            HStack {
                VStack {
                    BrightnessPaletteColorRow(givenColor: matPackage.matRed, selectedColor: $selectedColor)
                    BrightnessPaletteColorRow(givenColor: matPackage.matRose, selectedColor: $selectedColor)
                    BrightnessPaletteColorRow(givenColor: matPackage.matLPurple, selectedColor: $selectedColor)
                    BrightnessPaletteColorRow(givenColor: matPackage.matDPurple, selectedColor: $selectedColor)
                    BrightnessPaletteColorRow(givenColor: matPackage.matDBlue, selectedColor: $selectedColor)
                    BrightnessPaletteColorRow(givenColor: matPackage.matLBlue, selectedColor: $selectedColor)
                    BrightnessPaletteColorRow(givenColor: matPackage.matLLBlue, selectedColor: $selectedColor)
                    BrightnessPaletteColorRow(givenColor: matPackage.matLCyan, selectedColor: $selectedColor)
                    BrightnessPaletteColorRow(givenColor: matPackage.matDCyan, selectedColor: $selectedColor)
                    BrightnessPaletteColorRow(givenColor: matPackage.matDGreen, selectedColor: $selectedColor)
                    BrightnessPaletteColorRow(givenColor: matPackage.matLGreen, selectedColor: $selectedColor)
                    BrightnessPaletteColorRow(givenColor: matPackage.matLLGreen, selectedColor: $selectedColor)
                    BrightnessPaletteColorRow(givenColor: matPackage.matYellow, selectedColor: $selectedColor)
                    BrightnessPaletteColorRow(givenColor: matPackage.matGold, selectedColor: $selectedColor)
                    BrightnessPaletteColorRow(givenColor: matPackage.matOrange, selectedColor: $selectedColor)
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

struct BrightnessPaletteColorRow: View {
    
    @Binding var selectedColor: Color
    private var givenColor: KvColor
    private var colorList: [ColorItem] = []
    
    init(givenColor: KvColor, selectedColor: Binding<Color>) {
        self.givenColor = givenColor
        _selectedColor = selectedColor
        let colors = KvColorPalette.instance.generateBrightnessColorPalette(givenColor: self.givenColor.color)
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
    BrightnessPalettePager()
}
