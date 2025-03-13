//
//  SettingsTab.swift
//  KvColorPalette-App
//
//  Created by Kavimal Wijewardana on 3/12/25.
//

import SwiftUI
import KvColorPalette_iOS

struct SettingsTab: View {
    
    @State private var selectedColor = Color.white
    @State private var isShowingColorPicker = false
    
    var body: some View {
        ZStack {
            AppBackground()
            
            VStack {
                HeadingTitleView(titleText: "Settings")
                
                VStack {
                    HStack {
                        Text("Current Theme")
                            //.foregroundColor(Color.themePalette.onPrimary)
                            .padding()
                        Spacer()
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.themePalette.primary, lineWidth: 1)
                                .fill(selectedColor)
                                .frame(width: 35, height: 35)
                                
                            ColorPicker(selection: $selectedColor, label: {})
                                    .labelsHidden()
                                    .onChange(of: selectedColor) { oldValue, newValue in
                                        KvColorPalette.initialize(basicColor: selectedColor)
                                    }
                        }
                        .padding([.top, .bottom])
                        .padding([.trailing], 5)
                        
                        Image(systemName: "chevron.right")
                            .padding([.top, .bottom, .trailing])
                            
                    }
                    //.background(Color.themePalette.tertiary)
                    .cornerRadius(12)
                    .overlay( /// apply a rounded border
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.themePalette.primary, lineWidth: 1)
                    )
                }
                .padding([.top], 12)
                .padding([.leading, .trailing], 20)
                
                Spacer()
            }
        }
    }
}

#Preview {
    SettingsTab()
}
