//
//  QuickMatchModel.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/11/26.
//
// TO-DO: API 연결할 부분

import SwiftUI

struct QuickMatchModel: Identifiable {
    enum Treatment {
        case free
        case materials(price: String)
        case modelFee(price: String)
    }

    let id: String
    let title: String
    let image: ImageResource
    let treatment: Treatment
    let location: String
    let availableTime: String
    let tags: [String]
    let additionalTagCount: Int
    let postedAt: String

    static let samples: [Self] = [
        .init(
            id: "quickmatch1",
            title: "펌ㆍ염색모델 모집중입니다",
            image: .quickmatch01,
            treatment: .free,
            location: "서울시 관악구",
            availableTime: "시간 상관없음",
            tags: ["컷트", "클리닉", "펌"],
            additionalTagCount: 7,
            postedAt: "어제"
        ),
        .init(
            id: "quickmatch2",
            title: "여자숏컷/애쉬블루옴브레 모델 구합니다",
            image: .quickmatch02,
            treatment: .modelFee(price: "100,000원"),
            location: "성남시 분당구",
            availableTime: "평일 오후, 주말 오후",
            tags: ["컷트", "펌", "탈색"],
            additionalTagCount: 0,
            postedAt: "어제"
        ),
        .init(
            id: "quickmatch3",
            title: "헤어모델 모집합니다",
            image: .quickmatch03,
            treatment: .materials(price: "5,000원"),
            location: "서울시 강남구",
            availableTime: "시간 상관없음",
            tags: ["컷트", "클리닉", "펌"],
            additionalTagCount: 6,
            postedAt: "오전 10:21"
        )
    ]
}
