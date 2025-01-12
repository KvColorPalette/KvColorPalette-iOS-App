//
//  ThemeColorGenTab.swift
//  kv-ios-color-pallet-app
//
//  Created by Kavimal Wijewardana on 12/27/24.
//

import SwiftUI
import KvColorPallet_iOS

struct ThemeColorGenTab: View {
    
    var body: some View {
        ZStack {
            AppBackground()
            
            VStack {
                HStack {
                    Text("Theme Color Pallet")
                        .font(.system(size: 40, weight: .semibold))
                    
                    Spacer()
                }
                .padding([.leading, .trailing], 10)
                .padding(.bottom, -10)
                
                ScrollView {
                    VStack {
                        let colorPalletOne = KvColorPallet.instance.generateThemeColorPallet(givenColor: MatPackage().matRed.color)
                        ThemeColorPlate(colorPalette: colorPalletOne)
                            .padding(.top, 10)
                        
                        let colorPalletTwo = KvColorPallet.instance.generateThemeColorPallet(givenColor: MatPackage().matGold.color)
                        ThemeColorPlate(colorPalette: colorPalletTwo)
                            .padding(.top, 10)
                        
                        let colorPalletThree = KvColorPallet.instance.generateThemeColorPallet(givenColor: MatPackage().matDGreen.color)
                        ThemeColorPlate(colorPalette: colorPalletThree)
                            .padding(.top, 10)
                        
                        let colorPalletFour = KvColorPallet.instance.generateThemeColorPallet(givenColor: Color.brown)
                        ThemeColorPlate(colorPalette: colorPalletFour)
                            .padding(.top, 10)
                        
                        let colorPalletFive = KvColorPallet.instance.generateThemeColorPallet(givenColor: MatPackage().matLBlue.color)
                        ThemeColorPlate(colorPalette: colorPalletFive)
                            .padding(.top, 10)
                        
                        Button(action: {
                            
                        }, label: {
                            Text("Try it out!")
                                .font(.system(size: 16, weight: .light))
                                .foregroundColor(Color.themePallet.onPrimary)
                                .frame(maxWidth: .infinity, maxHeight: 10)
                                .padding()
                                .background(Color.themePallet.primary)
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
