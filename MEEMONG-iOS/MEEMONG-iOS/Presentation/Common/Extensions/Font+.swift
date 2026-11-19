//
//  Font+.swift
//  MEEMONG-iOS
//
//  Created by 김보민 on 11/8/26.
//

import SwiftUI

enum PretendardWeight: String, CaseIterable {
    case thin       = "Pretendard-Thin"
    case extraLight = "Pretendard-ExtraLight"
    case light      = "Pretendard-Light"
    case regular    = "Pretendard-Regular"
    case medium     = "Pretendard-Medium"
    case semiBold   = "Pretendard-SemiBold"
    case bold       = "Pretendard-Bold"
    case extraBold  = "Pretendard-ExtraBold"
    case black      = "Pretendard-Black"
}

extension Font {
    static func pretendard(_ weight: PretendardWeight, size: CGFloat) -> Font {
        .custom(weight.rawValue, size: size)
    }
}

struct MeemongFont {
    let weight: PretendardWeight
    let size: CGFloat
    let lineHeight: CGFloat?

    static func pretendard(_ weight: PretendardWeight, size: CGFloat) -> Self {
        Self(weight: weight, size: size, lineHeight: nil)
    }
}

extension MeemongFont {
    static let title = Self(weight: .semiBold, size: 20, lineHeight: 30)
    static let headline = Self(weight: .semiBold, size: 18, lineHeight: 27)
    static let body1_semiBold = Self(weight: .semiBold, size: 16, lineHeight: 24)
    static let body1_regular = Self(weight: .regular, size: 16, lineHeight: 24)
    static let body2_semiBold = Self(weight: .semiBold, size: 14, lineHeight: 19.6)
    static let body2_medium = Self(weight: .medium, size: 14, lineHeight: 19.6)
    static let body2_regular = Self(weight: .regular, size: 14, lineHeight: 19.6)
    static let cap1_medium = Self(weight: .medium, size: 12, lineHeight: 18)
    static let cap1_regular = Self(weight: .regular, size: 12, lineHeight: 18)
    static let cap2_semibold = Self(weight: .semiBold, size: 10, lineHeight: 16)
    static let cap2_medium = Self(weight: .medium, size: 10, lineHeight: 16)
}
