//
//  ThemeGenDetailUI.swift
//  KvColorPalette-App
//
//  Created by Kavimal Wijewardana on 1/31/25.
//

import SwiftUI
import KvColorPalette_iOS

struct ThemeGenDetailUI: View {
    
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    
    @State private var colorHex: String = ""
    @State private var selectedColor: Color = .white
    @State private var themeColorPalette: AppThemePalette? = nil
    
    var body: some View {
        ZStack {
            AppBackground()
            
            VStack {
                HeadingTitleViewWithX(titleText: "Theme Generator", closeAction: {
                    presentationMode.wrappedValue.dismiss()
                })
                
                SelectedColorUI(selectedColor: $selectedColor, colorHex: $colorHex)
                    .padding(.top, 8)
                
                Button(action: {
                    themeColorPalette = KvColorPalette.instance.generateThemeColorPalette(givenColor: selectedColor)
                }) {
                    AppButtonFillUI(buttonText: "Generate Theme")
                }
                .padding([.leading, .trailing, .top], 12)
                
                if let themeColorPalette = themeColorPalette {
                    ScrollView {
                        VStack {
                            HStack (spacing: 0) {
                                VStack {
                                    Text("Light")
                                        .font(.system(size: 14, weight: .heavy))
                                        .foregroundColor(Color.themePalette.secondary)
                                    
                                    VStack (spacing: 0) {
                                        ThemeColorItem(color: themeColorPalette.light.primary, itemName: "Primary")
                                        ThemeColorItem(color: themeColorPalette.light.defaultColor, itemName: "Default")
                                        ThemeColorItem(color: themeColorPalette.light.inverseDefaultColor, itemName: "Default Inverse")
                                        ThemeColorItem(color: themeColorPalette.light.secondary, itemName: "Secondary")
                                        ThemeColorItem(color: themeColorPalette.light.tertiary, itemName: "Tertiary")
                                        ThemeColorItem(color: themeColorPalette.light.quaternary, itemName: "Quaternary")
                                        ThemeColorItem(color: themeColorPalette.light.background, itemName: "Background")
                                        ThemeColorItem(color: themeColorPalette.light.surface, itemName: "Surface")
                                        ThemeColorItem(color: themeColorPalette.light.scrim, itemName: "Scrim")
                                        ThemeColorItem(color: themeColorPalette.light.shadow, itemName: "Shadow")
                                        ThemeColorItem(color: themeColorPalette.light.onPrimary, itemName: "onPrimary")
                                        ThemeColorItem(color: themeColorPalette.light.inverseOnPrimary, itemName: "onPrimary Inverse")
                                        ThemeColorItem(color: themeColorPalette.light.onSecondary, itemName: "onSecondary")
                                        ThemeColorItem(color: themeColorPalette.light.onBackground, itemName: "OnBackground")
                                        ThemeColorItem(color: themeColorPalette.light.inverseOnBackground, itemName: "OnBackground Inverse")
                                        ThemeColorItem(color: themeColorPalette.light.onSurface, itemName: "OnSurface")
                                    }
                                    .cornerRadius(12)
                                    .padding(.trailing, 2)
                                }
                                
                                VStack {
                                    Text("Dark")
                                        .font(.system(size: 14, weight: .heavy))
                                        .foregroundColor(Color.themePalette.secondary)
                                    
                                    VStack (spacing: 0) {
                                        ThemeColorItem(color: themeColorPalette.dark.primary, itemName: "Primary")
                                        ThemeColorItem(color: themeColorPalette.dark.defaultColor, itemName: "Default")
                                        ThemeColorItem(color: themeColorPalette.dark.inverseDefaultColor, itemName: "Default Inverse")
                                        ThemeColorItem(color: themeColorPalette.dark.secondary, itemName: "Secondary")
                                        ThemeColorItem(color: themeColorPalette.dark.tertiary, itemName: "Tertiary")
                                        ThemeColorItem(color: themeColorPalette.dark.quaternary, itemName: "Quaternary")
                                        ThemeColorItem(color: themeColorPalette.dark.background, itemName: "Background")
                                        ThemeColorItem(color: themeColorPalette.dark.surface, itemName: "Surface")
                                        ThemeColorItem(color: themeColorPalette.dark.scrim, itemName: "Scrim")
                                        ThemeColorItem(color: themeColorPalette.dark.shadow, itemName: "Shadow")
                                        ThemeColorItem(color: themeColorPalette.dark.onPrimary, itemName: "onPrimary")
                                        ThemeColorItem(color: themeColorPalette.dark.inverseOnPrimary, itemName: "onPrimary Inverse")
                                        ThemeColorItem(color: themeColorPalette.dark.onSecondary, itemName: "onSecondary")
                                        ThemeColorItem(color: themeColorPalette.dark.onBackground, itemName: "OnBackground")
                                        ThemeColorItem(color: themeColorPalette.dark.inverseOnBackground, itemName: "OnBackground Inverse")
                                        ThemeColorItem(color: themeColorPalette.dark.onSurface, itemName: "OnSurface")
                                    }
                                    .cornerRadius(12)
                                    .padding(.leading, 2)
                                }
                            }
                        }
                    }
                    .padding(12)
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    ThemeGenDetailUI()
}
