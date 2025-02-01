//
//  ThemeColorPlateUI.swift
//  KV Color Palette
//
//  Created by Kavimal Wijewardana on 1/1/25.
//

import SwiftUI
import KvColorPalette_iOS

public struct ThemeColorPlate: View {
    
    private var colorPalette: AppThemePalette
    
    init(colorPalette: AppThemePalette) {
        self.colorPalette = colorPalette
    }
    
    public var body: some View {
        HStack {
            Rectangle()
                .fill(colorPalette.light.base)
                .frame(width: 50, height: 200)
                .overlay(
                    VStack {
                        HStack {
                            Text("BASE")
                                .font(.system(size: 16, weight: .bold))
                                .foregroundColor(.white)
                                .frame(width: 10)
                                .padding(10)
                            Spacer()
                        }
                        Spacer()
                    }
                )
            
            VStack {
                HStack {
                    Text("Light Theme")
                        .foregroundColor(.black)
                    Spacer()
                }
                
                HStack {
                    ColorCircle(color: colorPalette.light.primary, colorLetter: "P")
                    ColorCircle(color: colorPalette.light.secondary, colorLetter: "S")
                    ColorCircle(color: colorPalette.light.tertiary, colorLetter: "T")
                    ColorCircle(color: colorPalette.light.quaternary, colorLetter: "Q")
                    ColorCircle(color: colorPalette.light.background, colorLetter: "B", letterColor: .black)
                    
                    Spacer()
                }
                
                HStack {
                    Text("Dark Theme")
                        .foregroundColor(.black)
                    Spacer()
                }
                
                HStack {
                    ColorCircle(color: colorPalette.dark.primary, colorLetter: "P")
                    ColorCircle(color: colorPalette.dark.secondary, colorLetter: "S", letterColor: .black)
                    ColorCircle(color: colorPalette.dark.tertiary, colorLetter: "T")
                    ColorCircle(color: colorPalette.dark.quaternary, colorLetter: "Q", letterColor: .black)
                    ColorCircle(color: colorPalette.dark.background, colorLetter: "B")
                    
                    Spacer()
                }
                
            }
            .padding([.leading], 10)
            
            Spacer()
        }
        .padding()
        .background(Color.white)
        .cornerRadius(5)
        .shadow(radius: 5)
        .padding([.leading, .trailing])
    }
}

public struct ThemeColorItem: View {
    
    private var color: Color
    private var itemName: String
    
    public init(color: Color, itemName: String) {
        self.color = color
        self.itemName = itemName
    }
    
    public var body: some View {
        VStack {
            HStack {
                Text(itemName)
                    .font(.system(size: 12, weight: .light))
                    .foregroundColor(color.isHightLightColor ? Color.black : Color.white)
                
                Spacer()
                
                Text(ColorUtil.getHex(color: color))
                    .textSelection(.enabled)
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(color.isHightLightColor ? Color.black : Color.white)
            }
        }
        .frame(height: 25)
        .padding()
        .background(self.color)
    }
}

struct ColorCircle: View {
    
    private var color: Color
    private var colorLetter: String
    private var letterColor: Color
    
    init(color: Color, colorLetter: String, letterColor: Color = .white) {
        self.color = color
        self.colorLetter = colorLetter
        self.letterColor = letterColor
    }
    
    var body: some View {
        Circle()
            .fill(color)
            .frame(width: 45, height: 45)
            .overlay {
                Text(colorLetter)
                    .foregroundColor(letterColor)
            }
    }
}

#Preview {
    ThemeColorPlate(colorPalette: KvColorPalette.instance.generateThemeColorPalette(givenColor: MatPackage().matLBlue.color))
}
