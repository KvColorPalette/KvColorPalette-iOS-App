//
//  ColorPalletTab.swift
//  kv-ios-color-pallet-app
//
//  Created by Kavimal Wijewardana on 12/27/24.
//

import SwiftUI
import KvColorPallet

struct ColorPalletTab: View {
    
    @State private var pageIndex = 0
    private var pages: [PalletPage]
    private let dotAppearance = UIPageControl.appearance()
    
    public init() {
        self.pages = PalletPage.palletPages
    }
    
    var body: some View {
        VStack {
            TabView(selection: $pageIndex, content: {
                ForEach(pages) { pageItem in
                    VStack {
                        if pageItem.tag == 1 {
                            PalletPager()
                        } else {
                            AlphaPalletPager()
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
        }
    }
}

#Preview {
    ColorPalletTab()
}
