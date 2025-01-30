//
//  ColorPaletteTab.swift
//  KV Color Palette
//
//  Created by Kavimal Wijewardana on 12/27/24.
//

import SwiftUI
import KvColorPalette_iOS

struct ColorPaletteTab: View {
    
    @State private var pageIndex = 0
    @State private var navigateToPaletteDetailView = false
    
    private var pages: [PalettePage]
    private let dotAppearance = UIPageControl.appearance()
    
    public init() {
        self.pages = PalettePage.palletPages
    }
    
    var body: some View {
        ZStack {
            AppBackground()
            
            VStack {
                TabView(selection: $pageIndex, content: {
                    ForEach(pages) { pageItem in
                        VStack {
                            if pageItem.tag == 1 {
                                AlphaPalettePager()
                            } else if pageItem.tag == 2 {
                                BrightnessPalettePager()
                            } else if pageItem.tag == 3 {
                                SaturationPalettePager()
                            } else {
                                PalettePager()
                            }
                        }
                        .tag(pageItem.tag)
                    }
                })
                .tabViewStyle(.page) // Enable page-style swipe
                .animation(.easeInOut, value: pageIndex) // Smooth transition animation
                .onAppear {
                    dotAppearance.currentPageIndicatorTintColor = UIColor(.black)
                    dotAppearance.pageIndicatorTintColor = UIColor(.gray)
                }
                
                Button(action: {
                    navigateToPaletteDetailView = true
                }, label: {
                    Text("Try it out!")
                        .font(.system(size: 16, weight: .light))
                        .foregroundColor(Color.themePalette.onPrimary)
                        .frame(maxWidth: .infinity, maxHeight: 10)
                        .padding()
                        .background(Color.themePalette.primary)
                        .cornerRadius(10)
                })
                .padding(.top, -20)
                .padding([.trailing, .leading])
                
                Spacer()
            }
        }
        .fullScreenCover(isPresented: $navigateToPaletteDetailView, content: {
            PaletteGenDetailUI(selectedPageIndex: pageIndex)
        })
    }
}

#Preview {
    ColorPaletteTab()
}
