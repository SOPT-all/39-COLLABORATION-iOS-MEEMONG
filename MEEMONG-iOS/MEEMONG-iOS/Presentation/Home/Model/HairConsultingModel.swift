//
//  HairConsultingModel.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/11/26.
//

import Foundation

struct HairConsultingModel: Identifiable {
    let id: String
    let title: String
    let content: String
    let postedAt: String
    let commentCount: Int

    static let samples: [Self] = [
        .init(
            id: "consulting1",
            title: "예쁜 브라운/베이지 염색 받고 싶어요",
            content: "10만원대 이내로 쿨톤 브라운 염색하고 싶습니다!!",
            postedAt: "2일 전",
            commentCount: 12
        ),
        .init(
            id: "consulting2",
            title: "손상모 커트&블랙염색 시술 흠흠",
            content: "3개월 전에 탈색 후 염색을 했는데 색이 잘 안빠져서 3~4번은 했더니 관리를 흠흠",
            postedAt: "3일 전",
            commentCount: 9
        ),
        .init(
            id: "consulting3",
            title: "단발하고 싶어요",
            content: "단발하고 싶어요!(태슬컷, c컬펌, 완전 뽀글 머리도 좋아요 다 상관 없습니다)",
            postedAt: "2일 전",
            commentCount: 12
        ),
        .init(
            id: "consulting4",
            title: "제발도와주세요저를",
            content: "매일 고데기를 할 자신이 없어서 최대한 손질이 편한 스타일을 원해요!",
            postedAt: "2일 전",
            commentCount: 10
        ),
        .init(
            id: "consulting5",
            title: "단발을 하고 싶은데 잘 어울릴지 모르겠어요",
            content: "제가 어릴때 단발을 했었는데 그냥 무작정 싹뚝 자르기만 해서 최양락이 되어버렸거든요",
            postedAt: "2일 전",
            commentCount: 10
        )
    ]
}
