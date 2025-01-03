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
        VStack {
            HStack {
                Text("Theme Color Pallet")
                    .font(.system(size: 40, weight: .semibold))
                    .foregroundColor(.black)
                
                Spacer()
            }
            .padding([.leading, .trailing], 10)
            
            let colorPalletOne = KvColorPallet.instance.generateThemeColorPallet(givenColor: MatPackage().matRed)
            ThemeColorPlate(colorPalette: colorPalletOne)
                .padding(.top, 10)
            
            let colorPalletTwo = KvColorPallet.instance.generateThemeColorPallet(givenColor: MatPackage().matGold)
            ThemeColorPlate(colorPalette: colorPalletTwo)
                .padding(.top, 10)
            
            Spacer()
        }
    }
}

#Preview {
    ThemeColorGenTab()
}
