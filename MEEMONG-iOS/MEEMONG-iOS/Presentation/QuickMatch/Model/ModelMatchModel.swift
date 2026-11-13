//
//  ModelMatchModel.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/13/26.
//

import SwiftUI

struct ModelMatchModel {
    let recommendedPosts: [MatchPostModel]
    let normalPosts: [MatchPostModel]

    static let sample = Self(
        recommendedPosts: [
            .init(
                id: "mr1",
                title: "크리드펌 해주실 분 구해요!",
                image: .matchPlaceholder,
                author: "",
                treatment: .free,
                price: "",
                location: "김포시",
                availableTime: "시간 상관없음",
                tags: ["펌"],
                additionalTagCount: 0,
                postedAt: "오후 12:05"
            ),
            .init(
                id: "mr2",
                title: "염색 해 주실 디자이너분 찾습니다!!",
                image: .matchPlaceholder,
                author: "",
                treatment: .free,
                price: "",
                location: "광주시",
                availableTime: "시간 상관없음",
                tags: ["염색"],
                additionalTagCount: 0,
                postedAt: "오후 12:00"
            ),
            .init(
                id: "mr3",
                title: "샤기하고 중성적인 단발 컷트 원해요",
                image: .matchPlaceholder,
                author: "",
                treatment: .materials,
                price: "10,000원",
                location: "서울시 마포구",
                availableTime: "시간 상관없음",
                tags: ["컷트"],
                additionalTagCount: 0,
                postedAt: "어제"
            ),
            .init(
                id: "mr4",
                title: "긴 기장 붙임머리 희망해요",
                image: .matchPlaceholder,
                author: "",
                treatment: .materials,
                price: "200,000원",
                location: "고양시 덕양구",
                availableTime: "평일 오전, 평일 오후",
                tags: ["붙임머리"],
                additionalTagCount: 0,
                postedAt: "어제"
            )
        ],
        normalPosts: [
            .init(
                id: "mn1",
                title: "남자 머리 자르고싶습니다!",
                image: .matchPlaceholder,
                author: "민간인",
                treatment: .free,
                price: "",
                location: "서울시 서초구",
                availableTime: "시간 상관없음",
                tags: ["컷트"],
                additionalTagCount: 0,
                postedAt: "오후 07:49"
            ),
            .init(
                id: "mn2",
                title: "펌 원해요",
                image: .matchPlaceholder,
                author: "몽몽",
                treatment: .materials,
                price: "",
                location: "서울시 중량구",
                availableTime: "평일 오후, 주말 오전",
                tags: ["펌"],
                additionalTagCount: 0,
                postedAt: "오후 05:48"
            ),
            .init(
                id: "mn3",
                title: "히피 시스루쉐도우 빈티지 남자펌",
                image: .matchPlaceholder,
                author: "먕무헤비",
                treatment: .modelFee,
                price: "45,000",
                location: "서울시 강서구",
                availableTime: "시간 상관없음",
                tags: ["펌"],
                additionalTagCount: 0,
                postedAt: "오후 05:44"
            ),
            .init(
                id: "mn4",
                title: "오늘!!펌 가능하신분 찾습니다",
                image: .matchPlaceholder,
                author: "민",
                treatment: .materials,
                price: "50,000",
                location: "서울시 도봉구",
                availableTime: "시간 상관없음",
                tags: ["펌"],
                additionalTagCount: 0,
                postedAt: "오후 02:52"
            )
        ]
    )
}
