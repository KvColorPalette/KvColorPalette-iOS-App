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
    
    @State private var colorHex: String = ""
    @State private var selectedColor: Color = .white
    @State private var colorList: [Color] = []
    
    var body: some View {
        ZStack {
            AppBackground()
            
            VStack {
                HeadingTitleViewWithX(titleText: "Color Palette Generator - [KvColorPalette]", closeAction: {
                    presentationMode.wrappedValue.dismiss()
                })
                
                SelectedColorUI(selectedColor: $selectedColor, colorHex: $colorHex)
                    .padding(.top, 8)
                
                Button(action: {
                    let closestColor = KvColorPalette.instance.findClosestKvColor(givenColor: selectedColor)
                    colorList = KvColorPalette.instance.generateColorPalette(givenColor: closestColor)
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
    PaletteGenDetailUI()
}
