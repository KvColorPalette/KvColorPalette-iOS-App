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
    private var selectedColorList: [Color]
    
    public init(selectedColorList: [Color]) {
        self.selectedColorList = selectedColorList
    }
    
    public var body: some View {
        HStack {
            VStack {
                
                RoundedRectangle(cornerRadius: 5)
                    .stroke(Color.themePalette.primary, lineWidth: 1)
                    .fill(selectedColorList.count >= 1 ? selectedColorList[0] : Color.white)
                    .frame(width: 50, height: 50)
                    .padding([.top, .leading, .trailing], 6)
                HStack {
                    Text("\(ColorUtil.getHex(color: selectedColorList.count >= 1 ? selectedColorList[0] : Color.white))")
                        .textSelection(.enabled)
                        .font(.system(size: 12, weight: .medium))
                        .foregroundColor(Color.themePalette.secondary)
                }
            }
            
            VStack {
                RoundedRectangle(cornerRadius: 5)
                    .stroke(Color.themePalette.primary, lineWidth: 1)
                    .fill(selectedColorList.count >= 2 ? selectedColorList[1] : Color.white)
                    .frame(width: 50, height: 50)
                    .padding([.top, .leading, .trailing], 6)
                
                HStack {
                    Text("\(ColorUtil.getHex(color: selectedColorList.count >= 2 ? selectedColorList[1] : Color.white))")
                        .textSelection(.enabled)
                        .font(.system(size: 12, weight: .medium))
                        .foregroundColor(Color.themePalette.secondary)
                }
            }
            
            VStack {
                RoundedRectangle(cornerRadius: 5)
                    .stroke(Color.themePalette.primary, lineWidth: 1)
                    .fill(selectedColorList.count >= 3 ? selectedColorList[2] : Color.white)
                    .frame(width: 50, height: 50)
                    .padding([.top, .leading, .trailing], 6)
                
                HStack {
                    Text("\(ColorUtil.getHex(color: selectedColorList.count >= 3 ? selectedColorList[2] : Color.white))")
                        .textSelection(.enabled)
                        .font(.system(size: 12, weight: .medium))
                        .foregroundColor(Color.themePalette.secondary)
                }
            }
            
            VStack {
                RoundedRectangle(cornerRadius: 5)
                    .stroke(Color.themePalette.primary, lineWidth: 1)
                    .fill(selectedColorList.count >= 4 ? selectedColorList[3] : Color.white)
                    .frame(width: 50, height: 50)
                    .padding([.top, .leading, .trailing], 6)
                
                HStack {
                    Text("\(ColorUtil.getHex(color: selectedColorList.count >= 4 ? selectedColorList[3] : Color.white))")
                        .textSelection(.enabled)
                        .font(.system(size: 12, weight: .medium))
                        .foregroundColor(Color.themePalette.secondary)
                }
            }
            
            VStack {
                RoundedRectangle(cornerRadius: 5)
                    .stroke(Color.themePalette.primary, lineWidth: 1)
                    .fill(selectedColorList.count >= 5 ? selectedColorList[4] : Color.white)
                    .frame(width: 50, height: 50)
                    .padding([.top, .leading, .trailing], 6)
                
                HStack {
                    Text("\(ColorUtil.getHex(color: selectedColorList.count >= 5 ? selectedColorList[4] : Color.white))")
                        .textSelection(.enabled)
                        .font(.system(size: 12, weight: .medium))
                        .foregroundColor(Color.themePalette.secondary)
                }
            }
        }
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

public struct ColorCountSelector: View {
    
    @Binding var selectedCount: Int
    let options = [2, 5, 10, 15, 20, 25, 30]
    
    public init (selectedCount: Binding<Int>) {
        self._selectedCount = selectedCount
    }
    
    public var body: some View {
        HStack {
            Text("Select your Color")
                .font(.system(size: 20, weight: .medium))
                .foregroundColor(Color.themePalette.primary)
                .padding(10)
            Spacer()
            
            Menu {
                ForEach(options, id: \.self) { option in
                    Button("\(option)", action: { selectedCount = option })
                }
            } label: {
                Label("\(selectedCount)", systemImage: "chevron.down")
                    .padding()
                    .background(Color.blue.opacity(0.1))
                    .cornerRadius(8)
            }
            .padding(4)
        }
        .padding(5)
        .background(Color.white)
        .cornerRadius(5)
        .shadow(color: Color.themePalette.shadow, radius: 5)
        .padding([.leading, .trailing])
    }
}

#Preview {
    ColorBox(givenColor: Color.blue, onSelect: { _ in })
    ColorDetailRow(selectedColorList: [])
    ColorStrip(stripColor: .red)
    ColorCountSelector(selectedCount: .constant(2))
}
