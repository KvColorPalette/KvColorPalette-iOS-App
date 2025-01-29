//
//  CommonUI.swift
//  KvColorPalette-App
//
//  Created by Kavimal Wijewardana on 1/27/25.
//
import SwiftUI
import KvColorPalette_iOS

public struct AppBackground: View {
    public var body: some View {
        Color.themePalette.background
            .edgesIgnoringSafeArea(.all)
    }
}

// MARK: - UI component for TextField
public struct AppTextFieldOutlineUI: View {
    
    private var hint: String!
    @State private var valueText: Binding<String>
    @State private var isDisable = false
    
    public init(hint: String, valueText: Binding<String>!) {
        self.hint = hint
        self.valueText = valueText
    }
    
    public var body: some View {
        TextField(self.hint, text: self.valueText)
            .padding(.all)
            .frame(height: 45)
            .padding(4)
            .disabled(isDisable)
            .overlay(
                RoundedRectangle(cornerRadius: 5.0)
                    .strokeBorder(Color.themePalette.primary, style: StrokeStyle(lineWidth: 1.0))
            )
    }
}

public struct SelectedColorUI: View {
    
    @Binding var selectedColor: Color
    @Binding var colorHex: String
    
    public init(selectedColor: Binding<Color>, colorHex: Binding<String>) {
        self._selectedColor = selectedColor
        self._colorHex = colorHex
    }
    
    public var body: some View {
        VStack {
            HStack {
                VStack {
                    HStack {
                        Text("Select your Color")
                            .font(.system(size: 20, weight: .medium))
                            .foregroundColor(Color.themePalette.secondary)
                            .padding([.leading, .top], 10)
                        Spacer()
                    }
                    
                    Text("Touch on the color box or type your color-hex on below to pick your primary color to generate color palette")
                        .font(.system(size: 12, weight: .light))
                        .foregroundColor(Color.themePalette.secondary)
                        .padding([.leading, .trailing], 10)
                        .padding(.top, 1)
                    
                    AppTextFieldOutlineUI(hint: "color-hex", valueText: $colorHex)
                        .padding([.leading, .trailing, .bottom], 10)
                        .padding(.top, 2)
                }
                
                VStack {
                    VStack {
                        ColorPicker(selection: $selectedColor, supportsOpacity: false, label: {})
                            .labelsHidden()
                            .onChange(of: selectedColor) { oldValue, newValue in
                                colorHex = ColorUtil.getHex(color: newValue)
                            }
                    }
                    .frame(width: 40, height: 40)
                    .padding()
                    .background(selectedColor)
                    .cornerRadius(12)
                    .overlay( /// apply a rounded border
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.themePalette.primary, lineWidth: 1)
                    )
                }
                .frame(width: 100)
            }
        }
        .padding(5)
        .background(Color.white)
        .cornerRadius(5)
        .shadow(color: Color.themePalette.shadow, radius: 5)
        .padding([.leading, .trailing])
    }
}
