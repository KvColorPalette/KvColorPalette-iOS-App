//
//  AlphaPalettePager.swift
//  KV Color Palette
//
//  Created by Kavimal Wijewardana on 12/30/24.
//
import SwiftUI
import KvColorPalette_iOS

public struct AlphaPalettePager: View {
    
    @State var selectedColor: Color = .white
    @State var selectedColorList: Array<Color> = []
    
    public var body: some View {
        VStack {
            HeadingTitleView(titleText: "Alpha Palette")
            
            let matPackage = MatPackage()
            
            HStack {
                VStack {
                    AlphaPaletteColorRow(givenColor: matPackage.matRed, selectedColor: $selectedColor)
                    AlphaPaletteColorRow(givenColor: matPackage.matRose, selectedColor: $selectedColor)
                    AlphaPaletteColorRow(givenColor: matPackage.matLPurple, selectedColor: $selectedColor)
                    AlphaPaletteColorRow(givenColor: matPackage.matDPurple, selectedColor: $selectedColor)
                    AlphaPaletteColorRow(givenColor: matPackage.matDBlue, selectedColor: $selectedColor)
                    AlphaPaletteColorRow(givenColor: matPackage.matLBlue, selectedColor: $selectedColor)
                    AlphaPaletteColorRow(givenColor: matPackage.matLLBlue, selectedColor: $selectedColor)
                    AlphaPaletteColorRow(givenColor: matPackage.matLCyan, selectedColor: $selectedColor)
                    AlphaPaletteColorRow(givenColor: matPackage.matDCyan, selectedColor: $selectedColor)
                    AlphaPaletteColorRow(givenColor: matPackage.matDGreen, selectedColor: $selectedColor)
                    AlphaPaletteColorRow(givenColor: matPackage.matLGreen, selectedColor: $selectedColor)
                    AlphaPaletteColorRow(givenColor: matPackage.matLLGreen, selectedColor: $selectedColor)
                    AlphaPaletteColorRow(givenColor: matPackage.matYellow, selectedColor: $selectedColor)
                    AlphaPaletteColorRow(givenColor: matPackage.matGold, selectedColor: $selectedColor)
                    AlphaPaletteColorRow(givenColor: matPackage.matOrange, selectedColor: $selectedColor)
                }
                .padding()
            }
            .padding([.leading, .trailing], 10)
            .padding(.top, -15)
            .onChange(of: selectedColor) { oldColor, newColor in
                switch(selectedColorList.count) {
                case 0:
                    selectedColorList.append(newColor)
                    break
                case 1:
                    selectedColorList.append(selectedColorList[0])
                    selectedColorList[0] = newColor
                    break
                case 2:
                    selectedColorList.append(selectedColorList[1])
                    selectedColorList[1] = selectedColorList[0]
                    selectedColorList[0] = newColor
                    break
                case 3:
                    selectedColorList.append(selectedColorList[2])
                    selectedColorList[2] = selectedColorList[1]
                    selectedColorList[1] = selectedColorList[0]
                    selectedColorList[0] = newColor
                    break
                case 4:
                    selectedColorList.append(selectedColorList[3])
                    selectedColorList[3] = selectedColorList[2]
                    selectedColorList[2] = selectedColorList[1]
                    selectedColorList[1] = selectedColorList[0]
                    selectedColorList[0] = newColor
                    break
                default:
                    selectedColorList[4] = selectedColorList[3]
                    selectedColorList[3] = selectedColorList[2]
                    selectedColorList[2] = selectedColorList[1]
                    selectedColorList[1] = selectedColorList[0]
                    selectedColorList[0] = newColor
                }
            }
            
            ColorDetailRow(selectedColorList: selectedColorList)
            
            Spacer()
        }
    }
}

struct AlphaPaletteColorRow: View {
    
    @Binding var selectedColor: Color
    private var givenColor: KvColor
    private var colorList: [ColorItem] = []
    
    init(givenColor: KvColor, selectedColor: Binding<Color>) {
        self.givenColor = givenColor
        _selectedColor = selectedColor
        let colors = KvColorPalette.instance.generateAlphaColorPalette(givenColor: self.givenColor.color)
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
    AlphaPalettePager()
}
