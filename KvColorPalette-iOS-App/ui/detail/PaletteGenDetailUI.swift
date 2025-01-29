//
//  PaletteGenDetailUI.swift
//  KvColorPalette-App
//
//  Created by Kavimal Wijewardana on 1/26/25.
//

import SwiftUI

struct PaletteGenDetailUI: View {
    
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        ZStack {
            AppBackground()
            
            VStack {
                HeadingTitleViewWithX(titleText: "Color Palette Generator - [KvColorPalette]", closeAction: {
                    presentationMode.wrappedValue.dismiss()
                })
                
                SelectedColorUI()
                
                Spacer()
            }
        }
    }
}

#Preview {
    PaletteGenDetailUI()
}
