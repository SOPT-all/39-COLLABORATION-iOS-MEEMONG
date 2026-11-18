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
    var thumbnailURL: URL? = nil
    var profileImageURL: URL? = nil
    var isLiked: Bool = false
    var isRemotePost: Bool = false
}

extension MatchPostModel {
    init(recommendedPost post: RecommendedPostListResponseDTO.Post) {
        let treatment: Treatment

        switch post.priceType {
        case .free: treatment = .free
        case .review: treatment = .review
        case .negotiable: treatment = .materials
        }
        let tags = Self.makeTreatmentTags(from: post.treatmentTypes)

        self.init(
            id: String(post.postId),
            title: post.title,
            image: .matchPlaceholder,
            author: "",
            treatment: treatment,
            price: Self.makePriceText(
                priceType: post.priceType,
                displayPrice: post.displayPrice
            ),
            location: post.region,
            availableTime: Self.makeAvailableTimeText(from: post.availableTimes),
            tags: Array(tags.prefix(3)),
            additionalTagCount: max(0, tags.count - 3),
            postedAt: Self.makePostedAtText(from: post.createdAt),
            thumbnailURL: URL(string: post.thumbnailUrl),
            isLiked: post.isLiked,
            isRemotePost: true
        )
    }
}

extension MatchPostModel {
    init(generalPost post: GeneralPostListResponseDTO.Post) {
        let treatment: Treatment

        switch post.priceType {
        case .free: treatment = .free
        case .review: treatment = .review
        case .negotiable: treatment = .materials
        }
        let tags = Self.makeTreatmentTags(from: post.treatmentTypes)

        self.init(
            id: String(post.postId),
            title: post.title,
            image: .matchAuthor,
            author: post.designerName,
            treatment: treatment,
            price: Self.makePriceText(
                priceType: post.priceType,
                displayPrice: post.displayPrice,
                includesCurrencyUnit: false
            ),
            location: post.region,
            availableTime: Self.makeAvailableTimeText(from: post.availableTimes),
            tags: tags,
            additionalTagCount: 0,
            postedAt: Self.makePostedAtText(from: post.createdAt),
            profileImageURL: URL(string: post.designerProfileImageUrl),
            isLiked: post.isLiked,
            isRemotePost: true
        )
    }
}
