//
//  PaletteGenDetailUI.swift
//  KvColorPalette-App
//
//  Created by Kavimal Wijewardana on 1/26/25.
//

import SwiftUI
import KvColorPalette_iOS

struct PaletteGenDetailUI: View {
    
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    
    private var selectedPageIndex: Int
    private var pageName: String
    
    @State private var colorHex: String = ""
    @State private var selectedColor: Color = .white
    @State private var colorList: [Color] = []
    
    public init(selectedPageIndex: Int) {
        self.selectedPageIndex = selectedPageIndex
        switch selectedPageIndex {
        case 1:
            self.pageName = "Alpha"
        case 2:
            self.pageName = "Brightness"
        case 3:
            self.pageName = "Saturation"
        default:
            self.pageName = "KvColorPalette"
        }
    }
    
    var body: some View {
        ZStack {
            AppBackground()
            
            VStack {
                HeadingTitleViewWithX(titleText: "Color Palette Generator - [\(self.pageName)]", closeAction: {
                    presentationMode.wrappedValue.dismiss()
                })
                
                SelectedColorUI(selectedColor: $selectedColor, colorHex: $colorHex)
                    .padding(.top, 8)
                
                Button(action: {
                    switch selectedPageIndex {
                    case 1:
                        colorList = KvColorPalette.instance.generateAlphaColorPalette(givenColor: selectedColor)
                    case 2:
                        colorList = KvColorPalette.instance.generateBrightnessColorPalette(givenColor: selectedColor)
                    case 3:
                        colorList = KvColorPalette.instance.generateSaturationColorPalette(givenColor: selectedColor)
                    default:
                        let closestColor = KvColorPalette.instance.findClosestKvColor(givenColor: selectedColor)
                        colorList = KvColorPalette.instance.generateColorPalette(givenColor: closestColor)
                    }
                }) {
                    AppButtonFillUI(buttonText: "Generate Palette")
                }
                .padding([.leading, .trailing, .top], 12)
                
                ScrollView {
                    VStack (spacing: 0) {
                        ForEach(colorList, id: \.self) { color in
                            ColorStrip(stripColor: color)
                        }
                    }
                }
                .padding(12)
                
                Spacer()
            }
        }
    }
}

#Preview {
    PaletteGenDetailUI(selectedPageIndex: 0)
}
