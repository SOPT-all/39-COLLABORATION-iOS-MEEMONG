//
//  DesignerMatchModel.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/13/26.
//

import SwiftUI

struct DesignerMatchModel {
    let recommendedPosts: [MatchPostModel]
    let normalPosts: [MatchPostModel]

    static let sample = Self(
        recommendedPosts: [
            .init(
                id: "dr1",
                title: "뭘 해야 될지 모르겠다면 ?",
                image: .hero01,
                author: "",
                treatment: .review,
                price: "5,000원",
                location: "서울시 성동구",
                availableTime: "평일 오전",
                tags: ["컷트", "펌"],
                additionalTagCount: 0,
                postedAt: "오후 02:52"
            ),
            .init(
                id: "dr2",
                title: "펌ㆍ염색모델 모집중입니다",
                image: .quickmatch01,
                author: "",
                treatment: .free,
                price: "",
                location: "서울시 관악구",
                availableTime: "시간 상관없음",
                tags: ["펌"],
                additionalTagCount: 0,
                postedAt: "오후 02:52"
            ),
            .init(
                id: "dr3",
                title: "이미지 체인지 해보고싶은신분 어떤",
                image: .matchRecommend03,
                author: "",
                treatment: .free,
                price: "",
                location: "서울시 성동구",
                availableTime: "평일 오전",
                tags: ["컷트", "펌", "염색"],
                additionalTagCount: 1,
                postedAt: "오후 02:52"
            ),
            .init(
                id: "dr4",
                title: "C컬 레이어드컷 헤어모델 구해요!",
                image: .matchRecommend04,
                author: "",
                treatment: .free,
                price: "",
                location: "서울시 마포구",
                availableTime: "평일 오전, 평일 오후",
                tags: ["컷트", "클리닉", "염색"],
                additionalTagCount: 0,
                postedAt: "어제"
            )
        ],
        normalPosts: [
            .init(
                id: "dn1",
                title: "11/2 오전 11시 단발컷+펌 모델구해요",
                image: .matchAuthor,
                author: "메이봄수아",
                treatment: .materials,
                price: "40,000",
                location: "서울시 서초구",
                availableTime: "평일 오전",
                tags: ["컷트", "펌"],
                additionalTagCount: 0,
                postedAt: "오후 07:49"
            ),
            .init(
                id: "dn2",
                title: "📌잠실 송파 석촌 헤어 모델 모집📌",
                image: .matchAuthor,
                author: "권영준 디자이너",
                treatment: .materials,
                price: "10,000",
                location: "서울시 송파구",
                availableTime: "시간 상관없음",
                tags: ["컷트", "펌", "매직", "염색"],
                additionalTagCount: 0,
                postedAt: "오후 07:31"
            ),
            .init(
                id: "dn3",
                title: "브라운컬러 염색모델 모집",
                image: .matchAuthor,
                author: "yubin",
                treatment: .materials,
                price: "45,000",
                location: "서울시 관악구",
                availableTime: "시간 상관없음",
                tags: ["염색"],
                additionalTagCount: 0,
                postedAt: "오후 07:28"
            ),
            .init(
                id: "dn4",
                title: "월, 화 롱헤어모델 모집 합니다",
                image: .matchAuthor,
                author: "수아디자이너",
                treatment: .free,
                price: "",
                location: "서울시 용산구",
                availableTime: "평일 오전",
                tags: ["컷트", "염색"],
                additionalTagCount: 0,
                postedAt: "오후 04:17"
            )
        ]
    )
}
