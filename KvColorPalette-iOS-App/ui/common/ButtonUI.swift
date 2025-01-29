//
//  ButtonUI.swift
//  KvColorPalette-App
//
//  Created by Kavimal Wijewardana on 1/29/25.
//
import SwiftUI
import KvColorPalette_iOS

public struct AppButtonFillUI: View {
    var buttonText: String
    var buttonColor: Color
    @Binding var isDisabled: Bool
    
    public init(buttonText: String, buttonColor: Color = Color.themePalette.primary, isDisabled: Binding<Bool> = .constant(false)) {
        self.buttonText = buttonText
        self.buttonColor = buttonColor
        self._isDisabled = isDisabled
    }
    
    public var body: some View {
        Text(self.buttonText)
            .font(.system(size: 16, weight: .light))
            .foregroundColor(!isDisabled ? Color.themePalette.onPrimary : .greyLight)
            .frame(maxWidth: .infinity)
            .padding()
            .background(!isDisabled ? self.buttonColor : .greyDark)
            .cornerRadius(5)
    }
}

// MARK: - UI component for button with outlined color
public struct AppButtonOutlineUI: View {
    var buttonText: String
    var buttonColor: Color
    @Binding var isDisabled: Bool
    
    public init(buttonText: String, buttonColor: Color = Color.themePalette.quaternary, isDisabled: Binding<Bool> = .constant(false)) {
        self.buttonText = buttonText
        self.buttonColor = buttonColor
        self._isDisabled = isDisabled
    }
    
    public var body: some View {
        Text(self.buttonText)
            .font(.system(size: 16, weight: .light))
            .foregroundColor(!isDisabled ? self.buttonColor : .greyLight)
            .frame(maxWidth: .infinity)
            .padding()
            .overlay {
                RoundedRectangle(cornerRadius: 5)
                    .stroke(!isDisabled ? self.buttonColor : .greyLight, lineWidth: 1)
            }
    }
}
