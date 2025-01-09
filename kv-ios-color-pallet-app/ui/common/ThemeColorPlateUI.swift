//
//  ThemeColorPlateUI.swift
//  KV Color Pallet
//
//  Created by Kavimal Wijewardana on 1/1/25.
//

import SwiftUI
import KvColorPallet_iOS

public struct ThemeColorPlate: View {
    
    private var colorPallet: AppThemePallet
    
    init(colorPalette: AppThemePallet) {
        self.colorPallet = colorPalette
    }
    
    public var body: some View {
        HStack {
            Rectangle()
                .fill(colorPallet.light.base)
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
                    ColorCircle(color: colorPallet.light.primary, colorLetter: "P")
                    ColorCircle(color: colorPallet.light.secondary, colorLetter: "S")
                    ColorCircle(color: colorPallet.light.tertiary, colorLetter: "T")
                    ColorCircle(color: colorPallet.light.background, colorLetter: "B", letterColor: .black)
                    
                    Spacer()
                }
                
                HStack {
                    Text("Dark Theme")
                        .foregroundColor(.black)
                    Spacer()
                }
                
                HStack {
                    ColorCircle(color: colorPallet.dark.primary, colorLetter: "P")
                    ColorCircle(color: colorPallet.dark.secondary, colorLetter: "S", letterColor: .black)
                    ColorCircle(color: colorPallet.dark.tertiary, colorLetter: "T")
                    ColorCircle(color: colorPallet.dark.background, colorLetter: "B")
                    
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
            .frame(width: 50, height: 50)
            .overlay {
                Text(colorLetter)
                    .foregroundColor(letterColor)
            }
    }
}
