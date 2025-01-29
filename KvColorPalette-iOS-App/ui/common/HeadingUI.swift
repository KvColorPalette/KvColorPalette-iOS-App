//
//  HeadingsUI.swift
//  KvColorPalette-App
//
//  Created by Kavimal Wijewardana on 1/27/25.
//
import SwiftUI
import KvColorPalette_iOS

// MARK: - UI component for Heading with title
public struct HeadingTitleView: View {
    
    var titleText: String
    
    public init(titleText: String) {
        self.titleText = titleText
    }
    
    public var body: some View {
        HStack {
            Text(self.titleText)
                .font(.system(size: 40, weight: .medium))
                .foregroundColor(Color.themePalette.secondary)
                .padding([.leading, .trailing, .top])
                .padding(.bottom, 5)
            Spacer()
        }
        .padding(.bottom, 2)
    }
}

// MARK: - UI component for Heading with title and back action
public struct HeadingTitleViewWithX: View {
    
    var titleText: String
    var closeAction: () -> Void
    
    public init(titleText: String, closeAction: @escaping () -> Void) {
        self.titleText = titleText
        self.closeAction = closeAction
    }
    
    public var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: closeAction, label: {
                    Image(systemName: "xmark")
                        .resizable()
                        .foregroundColor(Color.themePalette.secondary)
                        .frame(width: 20, height: 20, alignment: .center)
                        .padding(.trailing, 20)
                })
            }
            
            HStack {
                Text(self.titleText)
                    .font(.system(size: 32, weight: .medium))
                    .foregroundColor(Color.themePalette.secondary)
                    .padding(.leading)
                Spacer()
            }
        }
        .padding(.bottom, 2)
    }
}
