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

extension Font {
    static let title = pretendard(.semiBold, size: 20)
    static let headline = pretendard(.semiBold, size: 18)
    static let body1_semiBold = pretendard(.semiBold, size: 16)
    static let body1_regular = pretendard(.regular, size: 16)
    static let body2_semiBold = pretendard(.semiBold, size: 14)
    static let body2_medium = pretendard(.medium, size: 14)
    static let body2_regular = pretendard(.regular, size: 14)
    static let cap1_medium = pretendard(.medium, size: 12)
    static let cap1_regular = pretendard(.regular, size: 12)
    static let cap2_semibold = pretendard(.semiBold, size: 10)
    static let cap2_medium = pretendard(.medium, size: 10)
}
