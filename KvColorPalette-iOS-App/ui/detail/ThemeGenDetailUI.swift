//
//  ThemeGenDetailUI.swift
//  KvColorPalette-App
//
//  Created by Kavimal Wijewardana on 1/31/25.
//

import SwiftUI
import KvColorPalette_iOS

struct ThemeGenDetailUI: View {
    
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    
    @State private var colorHex: String = ""
    @State private var selectedColor: Color = .white
    
    var body: some View {
        ZStack {
            AppBackground()
            
            VStack {
                HeadingTitleViewWithX(titleText: "Theme Generator", closeAction: {
                    presentationMode.wrappedValue.dismiss()
                })
                
                SelectedColorUI(selectedColor: $selectedColor, colorHex: $colorHex)
                    .padding(.top, 8)
                
                Button(action: {
                    
                }) {
                    AppButtonFillUI(buttonText: "Generate Theme")
                }
                .padding([.leading, .trailing, .top], 12)
                
                Spacer()
            }
        }
    }
}

#Preview {
    ThemeGenDetailUI()
}
