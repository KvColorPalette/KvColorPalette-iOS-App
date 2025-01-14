//
//  PalettePager.swift
//  KV Color Palette
//
//  Created by Kavimal Wijewardana on 12/30/24.
//
import SwiftUI
import KvColorPalette_iOS

public struct PalettePager: View {
   
    @State var selectedColor: Color = .white
    
    public var body: some View {
        VStack {
            HStack {
                Text("Color Palette")
                    .font(.system(size: 40, weight: .semibold))
                
                Spacer()
            }
            .padding([.leading, .trailing], 10)
            
            let matPackage = MatPackage()
            
            HStack {
                VStack {
                    ColorPaletteRow(givenColor: matPackage.matRed, selectedColor: $selectedColor)
                    ColorPaletteRow(givenColor: matPackage.matRose, selectedColor: $selectedColor)
                    ColorPaletteRow(givenColor: matPackage.matLPurple, selectedColor: $selectedColor)
                    ColorPaletteRow(givenColor: matPackage.matDPurple, selectedColor: $selectedColor)
                    ColorPaletteRow(givenColor: matPackage.matDBlue, selectedColor: $selectedColor)
                    ColorPaletteRow(givenColor: matPackage.matLBlue, selectedColor: $selectedColor)
                    ColorPaletteRow(givenColor: matPackage.matLLBlue, selectedColor: $selectedColor)
                    ColorPaletteRow(givenColor: matPackage.matLCyan, selectedColor: $selectedColor)
                    ColorPaletteRow(givenColor: matPackage.matDCyan, selectedColor: $selectedColor)
                    ColorPaletteRow(givenColor: matPackage.matDGreen, selectedColor: $selectedColor)
                    ColorPaletteRow(givenColor: matPackage.matLGreen, selectedColor: $selectedColor)
                    ColorPaletteRow(givenColor: matPackage.matLLGreen, selectedColor: $selectedColor)
                    ColorPaletteRow(givenColor: matPackage.matYellow, selectedColor: $selectedColor)
                    ColorPaletteRow(givenColor: matPackage.matGold, selectedColor: $selectedColor)
                    ColorPaletteRow(givenColor: matPackage.matOrange, selectedColor: $selectedColor)
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

struct ColorPaletteRow: View {
    
    @Binding var selectedColor: Color
    private var givenColor: KvColor
    private var colorList: [ColorItem] = []
    
    init(givenColor: KvColor, selectedColor: Binding<Color>) {
        self.givenColor = givenColor
        _selectedColor = selectedColor
        let colors = KvColorPalette.instance.generateColorPalette(givenColor: self.givenColor)
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
    PalettePager()
}
