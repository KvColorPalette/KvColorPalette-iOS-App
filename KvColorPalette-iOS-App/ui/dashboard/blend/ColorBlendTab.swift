//
//  ColorBlendTab.swift
//  KvColorPalette-App
//
//  Created by Kavimal Wijewardana on 6/27/25.
//

import SwiftUI
import KvColorPalette_iOS

struct ColorBlendTab: View {
    
    @State private var selectedFirstColor = Color.white
    @State private var selectedSecondColor = Color.white
    @State private var blendColor = Color.white
    @State private var colorBias = 0.5
    
    var body: some View {
        ZStack {
            AppBackground()
            
            VStack {
                HeadingTitleView(titleText: "Color Blend")
                
                Text("Touch on the color box or type your color-hex on below to pick your primary color to generate color palette")
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(Color.themePalette.primary)
                    .padding([.leading, .trailing, .bottom], 10)
                    .padding(.top, 5)
                
                HStack {
                    // First Color pick
                    VStack {
                        VStack {
                            VStack {
                                ColorPicker(selection: $selectedFirstColor, supportsOpacity: false, label: {})
                                    .labelsHidden()
                                    .onChange(of: selectedFirstColor) { oldValue, newValue in
                                        //colorHex = ColorUtil.getHex(color: newValue)
                                    }
                            }
                            .frame(width: 60, height: 60)
                            .padding()
                            .background(selectedFirstColor)
                            .cornerRadius(12)
                            .overlay( /// apply a rounded border
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color.themePalette.primary, lineWidth: 1)
                            )
                        }
                        .frame(width: 80)
                        
                        HStack {
                            Text("First Color")
                                .font(.system(size: 12, weight: .light))
                                .foregroundColor(Color.themePalette.primary)
                                .padding(.top, 1)
                        }
                    }
                    .padding([.trailing], 10)
                    
                    VStack {
                        // Second Color Pick
                        VStack {
                            VStack {
                                ColorPicker(selection: $selectedSecondColor, supportsOpacity: false, label: {})
                                    .labelsHidden()
                                    .onChange(of: selectedSecondColor) { oldValue, newValue in
                                        //colorHex = ColorUtil.getHex(color: newValue)
                                    }
                            }
                            .frame(width: 60, height: 60)
                            .padding()
                            .background(selectedSecondColor)
                            .cornerRadius(12)
                            .overlay( /// apply a rounded border
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(Color.themePalette.primary, lineWidth: 1)
                            )
                        }
                        .frame(width: 80)
                        
                        HStack {
                            Text("Second Color")
                                .font(.system(size: 12, weight: .light))
                                .foregroundColor(Color.themePalette.primary)
                                .padding(.top, 1)
                        }
                    }
                    .padding([.leading], 10)
                }
                
                VStack {
                    HStack {
                        Text("First")
                            .font(.system(size: 12, weight: .light))
                            .foregroundColor(Color.themePalette.primary)
                            .padding()
                        Slider(value: $colorBias, in: 0...1)
                        Text("Second")
                            .font(.system(size: 12, weight: .light))
                            .foregroundColor(Color.themePalette.primary)
                            .padding()
                    }
                    Text("Color Bias: \(colorBias, specifier: "%.2f")")
                        .font(.system(size: 12, weight: .light))
                        .foregroundColor(Color.themePalette.primary)
                        .padding()
                }
                .padding(10)
                
                VStack {
                    Text("Blended Color")
                        .font(.system(size: 12, weight: .bold))
                        .foregroundColor(Color.themePalette.primary)
                        //.shadow(radius: Color.themePalette.shadow)
                        .padding()
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding()
                .background(blendColor)
                .cornerRadius(12)
                .overlay( /// apply a rounded border
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.themePalette.primary, lineWidth: 1)
                )
                .padding(16)
                
                //Spacer()
            }
        }
        .onChange(of: selectedFirstColor) { olderColor, newColor in
            self.blendColor = ColorUtil.blendColors(firstColor: newColor, secondColor: selectedSecondColor, bias: Float(colorBias))
        }
        .onChange(of: selectedSecondColor) { olderColor, newColor in
            self.blendColor = ColorUtil.blendColors(firstColor: selectedFirstColor, secondColor: newColor, bias: Float(colorBias))
        }
        .onChange(of: colorBias) { oldBias, newBias in
            self.blendColor = ColorUtil.blendColors(firstColor: selectedFirstColor, secondColor: selectedSecondColor, bias: Float(newBias))
        }
    }
}

#Preview {
    ColorBlendTab()
}
