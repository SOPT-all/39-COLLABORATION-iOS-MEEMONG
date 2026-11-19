//
//  View+Typography.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/19/26.
//

import SwiftUI
import UIKit

extension View {
    func meemongFont(_ style: MeemongFont) -> some View {
        modifier(MeemongFontModifier(style: style))
    }
}

private struct MeemongFontModifier: ViewModifier {
    let style: MeemongFont
    @ScaledMetric private var scale: CGFloat = 1

    func body(content: Content) -> some View {
        let size = style.size * scale
        let font = UIFont(name: style.weight.rawValue, size: size)
            ?? UIFont.systemFont(ofSize: size)
        let spacing = style.lineHeight.map { max(0, $0 * scale - font.lineHeight) } ?? 0

        content
            .font(.custom(style.weight.rawValue, fixedSize: size))
            .tracking(-size * 0.01)
            .lineSpacing(spacing)
            .padding(.vertical, spacing / 2)
    }
}
