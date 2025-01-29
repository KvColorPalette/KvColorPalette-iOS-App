//
//  ThemeColorGenTab.swift
//  KV Color Palette
//
//  Created by Kavimal Wijewardana on 12/27/24.
//

import SwiftUI
import KvColorPalette_iOS

struct ThemeColorGenTab: View {
    
    var body: some View {
        ZStack {
            AppBackground()
            
            VStack {
                HeadingTitleView(titleText: "Theme Color Palette")
                
                
                ScrollView {
                    VStack {
                        let colorPaletteOne = KvColorPalette.instance.generateThemeColorPalette(givenColor: MatPackage().matRed.color)
                        ThemeColorPlate(colorPalette: colorPaletteOne)
                            .padding(.top, 10)
                        
                        let colorPaletteTwo = KvColorPalette.instance.generateThemeColorPalette(givenColor: MatPackage().matGold.color)
                        ThemeColorPlate(colorPalette: colorPaletteTwo)
                            .padding(.top, 10)
                        
                        let colorPaletteThree = KvColorPalette.instance.generateThemeColorPalette(givenColor: MatPackage().matDGreen.color)
                        ThemeColorPlate(colorPalette: colorPaletteThree)
                            .padding(.top, 10)
                        
                        let colorPaletteFour = KvColorPalette.instance.generateThemeColorPalette(givenColor: Color.brown)
                        ThemeColorPlate(colorPalette: colorPaletteFour)
                            .padding(.top, 10)
                        
                        let colorPaletteFive = KvColorPalette.instance.generateThemeColorPalette(givenColor: MatPackage().matLBlue.color)
                        ThemeColorPlate(colorPalette: colorPaletteFive)
                            .padding(.top, 10)
                        
                        Button(action: {
                            
                        }, label: {
                            Text("Try it out!")
                                .font(.system(size: 16, weight: .light))
                                .foregroundColor(Color.themePalette.onPrimary)
                                .frame(maxWidth: .infinity, maxHeight: 10)
                                .padding()
                                .background(Color.themePalette.primary)
                                .cornerRadius(10)
                        })
                        .padding()
                        
                        Spacer()
                    }
                }
            }
        }
    }
}

#Preview {
    ThemeColorGenTab()
}
