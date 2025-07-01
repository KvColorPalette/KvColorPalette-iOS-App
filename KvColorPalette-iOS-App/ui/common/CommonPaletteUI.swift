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
    private var boxWidth: CGFloat = 32
    private var boxHeight: CGFloat = 32

    public init (givenColor: Color, selectedColor: Color? = nil, onSelect: @escaping (Color) -> Void) {
        self.givenColor = givenColor
        self.selectedColor = selectedColor
        self.onSelect = onSelect

        switch UIUtil.getScreenType() {
        case .MINI_SCREEN:
            boxWidth = 28
            boxHeight = 24
            break
        case .AVERAGE_SCREEN:
            boxWidth = 30
            boxHeight = 30
            break
        case .PLUS_SCREEN:
            boxWidth = 36
            boxHeight = 36
            break
        case .MAX_SCREEN:
            boxWidth = 38
            boxHeight = 38
            break
        }
    }

    public var body: some View {
        Rectangle()
            .fill(givenColor)
            .frame(width: boxWidth, height: boxHeight)
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

    @State private var isFirstColorCopied: Bool = false
    @State private var isSecondColorCopied: Bool = false
    @State private var isThirdColorCopied: Bool = false
    @State private var isForthColorCopied: Bool = false
    @State private var isFifthColorCopied: Bool = false

    public init(selectedColorList: [Color]) {
        self.selectedColorList = selectedColorList
    }

    public var body: some View {
        HStack {
            VStack {
                @State var isCopied: Bool = false
                Button(action: {
                    if selectedColorList.count >= 1 {
                        isFirstColorCopied = true
                        isSecondColorCopied = false
                        isThirdColorCopied = false
                        isForthColorCopied = false
                        isFifthColorCopied = false
                        UIPasteboard.general.string = ColorUtil.getHex(color: selectedColorList.count >= 1 ? selectedColorList[0] : Color.white)
                    }
                }, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.themePalette.primary, lineWidth: 1)
                            .fill(selectedColorList.count >= 1 ? selectedColorList[0] : Color.white)
                            .frame(width: 50, height: 50)

                        if selectedColorList.count >= 1 {
                            if isFirstColorCopied {
                                VStack {
                                    Image(systemName: "checkmark.arrow.trianglehead.counterclockwise")
                                        .resizable()
                                        .foregroundColor(Color.themePalette.secondary)
                                        .frame(width: 15, height: 15, alignment: .center)

                                    Text("Copied")
                                        .font(.system(size: 8, weight: .light))
                                        .foregroundColor(Color.themePalette.secondary)
                                }
                            } else {
                                Image(systemName: "hand.rays")
                                    .resizable()
                                    .foregroundColor(Color.themePalette.secondary)
                                    .frame(width: 25, height: 25, alignment: .center)
                            }
                        }
                    }
                    .padding([.top, .leading, .trailing], 6)
                })
            }

            VStack {
                Button(action: {
                    if selectedColorList.count >= 2 {
                        isFirstColorCopied = false
                        isSecondColorCopied = true
                        isThirdColorCopied = false
                        isForthColorCopied = false
                        isFifthColorCopied = false
                        UIPasteboard.general.string = ColorUtil.getHex(color: selectedColorList.count >= 2 ? selectedColorList[1] : Color.white)
                    }
                }, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.themePalette.primary, lineWidth: 1)
                            .fill(selectedColorList.count >= 2 ? selectedColorList[1] : Color.white)
                            .frame(width: 50, height: 50)

                        if selectedColorList.count >= 2 {
                            if isSecondColorCopied {
                                VStack {
                                    Image(systemName: "checkmark.arrow.trianglehead.counterclockwise")
                                        .resizable()
                                        .foregroundColor(Color.themePalette.secondary)
                                        .frame(width: 15, height: 15, alignment: .center)

                                    Text("Copied")
                                        .font(.system(size: 8, weight: .light))
                                        .foregroundColor(Color.themePalette.secondary)
                                }
                            } else {
                                Image(systemName: "hand.rays")
                                    .resizable()
                                    .foregroundColor(Color.themePalette.secondary)
                                    .frame(width: 25, height: 25, alignment: .center)
                            }
                        }
                    }
                    .padding([.top, .leading, .trailing], 6)
                })
            }

            VStack {
                Button(action: {
                    if selectedColorList.count >= 3 {
                        isFirstColorCopied = false
                        isSecondColorCopied = false
                        isThirdColorCopied = true
                        isForthColorCopied = false
                        isFifthColorCopied = false
                        UIPasteboard.general.string = ColorUtil.getHex(color: selectedColorList.count >= 3 ? selectedColorList[2] : Color.white)
                    }
                }, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.themePalette.primary, lineWidth: 1)
                            .fill(selectedColorList.count >= 3 ? selectedColorList[2] : Color.white)
                            .frame(width: 50, height: 50)

                        if selectedColorList.count >= 3 {
                            if isThirdColorCopied {
                                VStack {
                                    Image(systemName: "checkmark.arrow.trianglehead.counterclockwise")
                                        .resizable()
                                        .foregroundColor(Color.themePalette.secondary)
                                        .frame(width: 15, height: 15, alignment: .center)

                                    Text("Copied")
                                        .font(.system(size: 8, weight: .light))
                                        .foregroundColor(Color.themePalette.secondary)
                                }
                            } else {
                                Image(systemName: "hand.rays")
                                    .resizable()
                                    .foregroundColor(Color.themePalette.secondary)
                                    .frame(width: 25, height: 25, alignment: .center)
                            }
                        }
                    }
                    .padding([.top, .leading, .trailing], 6)
                })
            }

            VStack {
                Button(action: {
                    if selectedColorList.count >= 4 {
                        isFirstColorCopied = false
                        isSecondColorCopied = false
                        isThirdColorCopied = false
                        isForthColorCopied = true
                        isFifthColorCopied = false
                        UIPasteboard.general.string = ColorUtil.getHex(color: selectedColorList.count >= 4 ? selectedColorList[3] : Color.white)
                    }
                }, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.themePalette.primary, lineWidth: 1)
                            .fill(selectedColorList.count >= 4 ? selectedColorList[3] : Color.white)
                            .frame(width: 50, height: 50)

                        if selectedColorList.count >= 4 {
                            if isForthColorCopied {
                                VStack {
                                    Image(systemName: "checkmark.arrow.trianglehead.counterclockwise")
                                        .resizable()
                                        .foregroundColor(Color.themePalette.secondary)
                                        .frame(width: 15, height: 15, alignment: .center)

                                    Text("Copied")
                                        .font(.system(size: 8, weight: .light))
                                        .foregroundColor(Color.themePalette.secondary)
                                }
                            } else {
                                Image(systemName: "hand.rays")
                                    .resizable()
                                    .foregroundColor(Color.themePalette.secondary)
                                    .frame(width: 25, height: 25, alignment: .center)
                            }
                        }
                    }
                    .padding([.top, .leading, .trailing], 6)
                })
            }

            VStack {
                Button(action: {
                    if selectedColorList.count >= 5 {
                        isFirstColorCopied = false
                        isSecondColorCopied = false
                        isThirdColorCopied = false
                        isForthColorCopied = false
                        isFifthColorCopied = true
                        UIPasteboard.general.string = ColorUtil.getHex(color: selectedColorList.count >= 5 ? selectedColorList[4] : Color.white)
                    }
                }, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.themePalette.primary, lineWidth: 1)
                            .fill(selectedColorList.count >= 5 ? selectedColorList[4] : Color.white)
                            .frame(width: 50, height: 50)

                        if selectedColorList.count >= 5 {
                            if isFifthColorCopied {
                                VStack {
                                    Image(systemName: "checkmark.arrow.trianglehead.counterclockwise")
                                        .resizable()
                                        .foregroundColor(Color.themePalette.secondary)
                                        .frame(width: 15, height: 15, alignment: .center)

                                    Text("Copied")
                                        .font(.system(size: 8, weight: .light))
                                        .foregroundColor(Color.themePalette.secondary)
                                }
                            } else {
                                Image(systemName: "hand.rays")
                                    .resizable()
                                    .foregroundColor(Color.themePalette.secondary)
                                    .frame(width: 25, height: 25, alignment: .center)
                            }
                        }
                    }
                    .padding([.top, .leading, .trailing], 6)
                })
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
