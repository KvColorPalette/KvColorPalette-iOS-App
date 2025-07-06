//
//  ThemeColorGenTab.swift
//  KV Color Palette
//
//  Created by Kavimal Wijewardana on 12/27/24.
//

import SwiftUI
import KvColorPalette_iOS

struct ThemeColorGenTab: View {
    
    @State private var navigateToThemeDetailView = false
    @State private var selectedTab: Int = 0
    
    var body: some View {
        ZStack {
            AppBackground()
            
            VStack {
                HeadingTitleView(titleText: "Theme Color Palette")
                
                Picker("", selection: $selectedTab) {
                    Text("Single Color").tag(0)
                    Text("Multi Color").tag(1)
                }
                .pickerStyle(.segmented)
                .padding([.leading, .trailing], 12)
                
                switch(selectedTab) {
                    case 0:
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
                                navigateToThemeDetailView = true
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
                    case 1:
                    ScrollView {
                        VStack {
                            let colorPaletteOne = KvColorPalette.instance.generateMultiColorThemeColorSchemePalette(
                                givenColor: MatPackage().matRed.color, secondColor: MatPackage().matDBlue.color, bias: 0.5, themeGenMode: ThemeGenMode.BLEND)
                            ThemeColorPlate(colorPalette: colorPaletteOne)
                                .padding(.top, 10)
                            
                            let colorPaletteTwo = KvColorPalette.instance.generateMultiColorThemeColorSchemePalette(
                                givenColor: MatPackage().matGold.color, secondColor: MatPackage().matDBlue.color, bias: 0.5, themeGenMode: ThemeGenMode.BLEND)
                            ThemeColorPlate(colorPalette: colorPaletteTwo)
                                .padding(.top, 10)
                            
                            let colorPaletteThree = KvColorPalette.instance.generateMultiColorThemeColorSchemePalette(
                                givenColor: MatPackage().matDGreen.color, secondColor: MatPackage().matDBlue.color, bias: 0.5, themeGenMode: ThemeGenMode.BLEND)
                            ThemeColorPlate(colorPalette: colorPaletteThree)
                                .padding(.top, 10)
                            
                            let colorPaletteFour = KvColorPalette.instance.generateMultiColorThemeColorSchemePalette(
                                givenColor: Color.brown, secondColor: MatPackage().matDBlue.color, bias: 0.5, themeGenMode: ThemeGenMode.BLEND)
                            ThemeColorPlate(colorPalette: colorPaletteFour)
                                .padding(.top, 10)
                            
                            let colorPaletteFive = KvColorPalette.instance.generateMultiColorThemeColorSchemePalette(
                                givenColor: MatPackage().matLBlue.color, secondColor: MatPackage().matLGreen.color, bias: 0.5, themeGenMode: ThemeGenMode.BLEND)
                            ThemeColorPlate(colorPalette: colorPaletteFive)
                                .padding(.top, 10)
                            
                            Button(action: {
                                navigateToThemeDetailView = true
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
                default:
                    EmptyView()
                }
                
            }
        }
        .fullScreenCover(isPresented: $navigateToThemeDetailView, content: {
            ThemeGenDetailUI()
        })
    }
}

#Preview {
    ThemeColorGenTab()
}
