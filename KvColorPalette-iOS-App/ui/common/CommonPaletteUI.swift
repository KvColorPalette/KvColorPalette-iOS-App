//
//  CommonUI.swift
//  KvColorPaletteApp
//
//  Created by Kavimal Wijewardana on 12/30/24.
//
import SwiftUI
import KvColorPalette_iOS

public struct ColorBox: View {
    
    @State private var showBorder = false
    
    private var givenColor: Color = .blue
    private var selectedColor: Color? = nil
    private var onSelect: (Color) -> Void
    
    public init (givenColor: Color, selectedColor: Color? = nil, onSelect: @escaping (Color) -> Void) {
        self.givenColor = givenColor
        self.selectedColor = selectedColor
        self.onSelect = onSelect
    }
    
    public var body: some View {
        Rectangle()
            .fill(givenColor)
            .frame(width: 32, height: 32)
            .border(showBorder ? Color.white : .clear, width: 2)
            .onTapGesture {
                showBorder.toggle()
                onSelect(givenColor)
            }
            .onAppear {
                if let selectedColor {
                    if ColorUtil.getHexWithAlpha(color: selectedColor) == ColorUtil.getHexWithAlpha(color: givenColor) {
                        showBorder.toggle()
                    }
                }
            }
    }
}

public struct ColorDetailRow: View {
    
    private var selectedColor: Color
    
    public init(selectedColor: Color) {
        self.selectedColor = selectedColor
    }
    
    public var body: some View {
        HStack {
            Rectangle()
                .fill(selectedColor)
                .frame(width: 50, height: 50)
                .border(Color.black, width: 1)
                .padding(8)
            
            VStack {
                HStack {
                    Text("HEX: ")
                    Spacer()
                }
                
                HStack {
                    Text("HEX with Alpha: ")
                    Spacer()
                }
            }
            
            VStack {
                HStack {
                    Text("\(ColorUtil.getHex(color: selectedColor))")
                    Spacer()
                }
                
                HStack {
                    Text("\(ColorUtil.getHexWithAlpha(color: selectedColor))")
                    Spacer()
                }
            }
        }
        .padding(5)
        .background(Color.themePalette.background)
        .cornerRadius(5)
        .shadow(color: Color.themePalette.shadow, radius: 5)
        .padding([.leading, .trailing])
    }
}

public struct ColorStrip: View {
    
    private var stripColor: Color
    
    public init(stripColor: Color) {
        self.stripColor = stripColor
    }
    
    public var body: some View {
        HStack {
            HStack {
                Text("Red: \(stripColor.rgb.red, specifier: "%.2f"), Green: \(stripColor.rgb.green, specifier: "%.2f"), Blue: \(stripColor.rgb.blue, specifier: "%.2f")")
                    .font(.system(size: 12, weight: .light))
                    .foregroundColor(stripColor.isHightLightColor ? Color.black : Color.white)
                    .padding([.leading], 10)
                
                Spacer()
                
                Text(ColorUtil.getHex(color: stripColor))
                    .textSelection(.enabled)
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(stripColor.isHightLightColor ? Color.black : Color.white)
                    .padding([.trailing], 10)
            }
        }
        .frame(height: 45)
        .background(stripColor)
        .padding(0)
    }
}

#Preview {
    ColorBox(givenColor: Color.blue, onSelect: { _ in })
    ColorDetailRow(selectedColor: .red)
    ColorStrip(stripColor: .red)
}
