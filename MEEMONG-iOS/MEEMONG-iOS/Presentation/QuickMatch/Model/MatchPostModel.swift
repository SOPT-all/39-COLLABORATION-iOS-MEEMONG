//
//  MatchPostModel.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/13/26.
//

import SwiftUI

struct MatchPostModel: Identifiable {
    enum Treatment {
        case free, review, materials, modelFee

        var title: String {
            switch self {
            case .free: "무료시술"
            case .review: "리뷰특가"
            case .materials: "재료비 발생"
            case .modelFee: "페이 모델 (모델)"
            }
        }

        var color: Color {
            switch self {
            case .free, .review: .meemongBlue
            case .materials: .gray700
            case .modelFee: .meemongGreen
            }
        }
    }

    let id: String
    let title: String
    let image: ImageResource
    let author: String
    let treatment: Treatment
    let price: String
    let location: String
    let availableTime: String
    let tags: [String]
    let additionalTagCount: Int
    let postedAt: String
}
