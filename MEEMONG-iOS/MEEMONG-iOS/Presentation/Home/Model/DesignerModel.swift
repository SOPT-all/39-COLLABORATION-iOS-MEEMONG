//
//  DesignerModel.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/11/26.
//

import SwiftUI

struct DesignerModel: Identifiable {
    enum Treatment {
        case free
        case materials(price: String)
    }

    let id: String
    let name: String
    let salon: String
    let portfolio: [ImageResource]
    let profile: ImageResource
    let treatment: Treatment
    let location: String

    static let nearbySamples: [Self] = [
        .init(
            id: "nearby01",
            name: "한울",
            salon: "준오헤어 동탄카림에비뉴점",
            portfolio: [.near01, .near02, .near03],
            profile: .near11,
            treatment: .free,
            location: "경기 화성시 4.7km"
        ),
        .init(
            id: "nearby02",
            name: "지현 디자이너",
            salon: "이가자헤어비스 분당이마트점",
            portfolio: [.near04, .near05, .near06],
            profile: .near12,
            treatment: .materials(price: "2만원~"),
            location: "경기 성남시 분당구 13.0km"
        )
    ]

    static let recommendSamples: [Self] = [
        .init(
            id: "recommend1",
            name: "슬아",
            salon: "에이치플레이스 정자역점",
            portfolio: [.recommend01, .recommend02, .recommend03],
            profile: .recommend10,
            treatment: .materials(price: "10만원~"),
            location: "경기 성남시 분당구 13.4km"
        ),
        .init(
            id: "recommend2",
            name: "이유수석실장",
            salon: "헤어다이아 수원역 타임점",
            portfolio: [.recommend04, .recommend05, .recommend06],
            profile: .recommend11,
            treatment: .free,
            location: "경기도 수원시 팔달구 10.8km"
        )
    ]

    static let freeSamples: [Self] = [
        .init(
            id: "free1",
            name: "하루",
            salon: "하루",
            portfolio: [.free01, .free02, .free03],
            profile: .free10,
            treatment: .free,
            location: "경기도 수원시 권선구 7.9km"
        ),
        .init(
            id: "free2",
            name: "hd승연",
            salon: "차홍룸광교점",
            portfolio: [.free04, .free05, .free06],
            profile: .free11,
            treatment: .free,
            location: "경기도 수원시 영통구 7.9km"
        ),
        .init(
            id: "free3",
            name: "성아",
            salon: "아이디헤어 동탄 솔빛나루점",
            portfolio: [.free07, .free08, .free09],
            profile: .free12,
            treatment: .free,
            location: "경기도 화성시 동탄구 6.6km"
        )
    ]

    static let beautySamples: [Self] = [
        .init(
            id: "beauty1",
            name: "오프유 브로우",
            salon: "오프유브로우",
            portfolio: [.beauty01, .beauty02, .beauty03],
            profile: .beauty10,
            treatment: .free,
            location: "경기도 수원시 권선구 8.3km"
        ),
        .init(
            id: "beauty2",
            name: "하늘",
            salon: "모도아티스트리 수우너",
            portfolio: [.beauty04, .beauty05, .beauty06],
            profile: .beauty11,
            treatment: .free,
            location: "경기도 수원시 영통구 7.0km"
        ),
        .init(
            id: "beauty3",
            name: "Rosy",
            salon: "프리랜서",
            portfolio: [.beauty07, .beauty08, .beauty09],
            profile: .beauty12,
            treatment: .free,
            location: "경기도 수원시 권선구 8.2km"
        )
    ]
}
