//
//  HairItemModel.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/11/26.
//

import SwiftUI

struct HairItemModel: Identifiable {
    let id: String
    let title: String
    let image: ImageResource
    let tag: String
    let originalPrice: String
    let discountRate: Int
    let salePrice: String

    static let samples: [Self] = [
        .init(
            id: "hairItem1",
            title: "셀프염색 전 필수 두피 보호제",
            image: .hairItem01,
            tag: "두피보호",
            originalPrice: "28,000",
            discountRate: 68,
            salePrice: "8,960"
        ),
        .init(
            id: "hairItem2",
            title: "떡지고 냄새나는 두피 해결 샴푸",
            image: .hairItem02,
            tag: "기름제거",
            originalPrice: "33,000",
            discountRate: 30,
            salePrice: "23,100"
        )
    ]
}
