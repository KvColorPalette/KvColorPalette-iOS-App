//
//  AlphaPalletPager.swift
//  kv-ios-color-pallet-app
//
//  Created by Kavimal Wijewardana on 12/30/24.
//
import SwiftUI
import KvColorPallet_iOS

public struct AlphaPalletPager: View {
    
    @State var selectedColor: Color = .white
    
    public var body: some View {
        VStack {
            HStack {
                Text("Alpha Pallet")
                    .font(.system(size: 40, weight: .semibold))
                    .foregroundColor(.black)
                
                Spacer()
            }
            .padding([.leading, .trailing], 10)
            
            let matPackage = MatPackage()
            
            HStack {
                VStack {
                    AlphaPalletColorRow(givenColor: matPackage.matRed, selectedColor: $selectedColor)
                    AlphaPalletColorRow(givenColor: matPackage.matRose, selectedColor: $selectedColor)
                    AlphaPalletColorRow(givenColor: matPackage.matLPurple, selectedColor: $selectedColor)
                    AlphaPalletColorRow(givenColor: matPackage.matDPurple, selectedColor: $selectedColor)
                    AlphaPalletColorRow(givenColor: matPackage.matDBlue, selectedColor: $selectedColor)
                    AlphaPalletColorRow(givenColor: matPackage.matLBlue, selectedColor: $selectedColor)
                    AlphaPalletColorRow(givenColor: matPackage.matLLBlue, selectedColor: $selectedColor)
                    AlphaPalletColorRow(givenColor: matPackage.matLCyan, selectedColor: $selectedColor)
                    AlphaPalletColorRow(givenColor: matPackage.matDCyan, selectedColor: $selectedColor)
                    AlphaPalletColorRow(givenColor: matPackage.matDGreen, selectedColor: $selectedColor)
                    AlphaPalletColorRow(givenColor: matPackage.matLGreen, selectedColor: $selectedColor)
                    AlphaPalletColorRow(givenColor: matPackage.matLLGreen, selectedColor: $selectedColor)
                    AlphaPalletColorRow(givenColor: matPackage.matYellow, selectedColor: $selectedColor)
                    AlphaPalletColorRow(givenColor: matPackage.matGold, selectedColor: $selectedColor)
                    AlphaPalletColorRow(givenColor: matPackage.matOrange, selectedColor: $selectedColor)
                }
                .padding()
                
                Spacer()
            }
            .padding([.leading, .trailing], 10)
            .padding(.top, -15)
            
            ColorDetailRow(selectedColor: selectedColor)
            
            Spacer()
        }
    }
}

struct AlphaPalletColorRow: View {
    
    @Binding var selectedColor: Color
    private var givenColor: KvColor
    private var colorList: [ColorItem] = []
    
    init(givenColor: KvColor, selectedColor: Binding<Color>) {
        self.givenColor = givenColor
        _selectedColor = selectedColor
        let colors = KvColorPallet.instance.generateAlphaColorPallet(givenColor: self.givenColor.color)
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
    AlphaPalletPager()
}
