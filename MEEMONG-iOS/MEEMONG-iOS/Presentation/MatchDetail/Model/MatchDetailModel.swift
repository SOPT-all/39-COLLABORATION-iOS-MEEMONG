//
//  MatchDetailModel.swift
//  MEEMONG-iOS
//
//  Created by 김보민 on 11/18/26.
//

import Foundation

struct MatchDetailModel {
    let id: Int64
    let title: String
    let imageURLs: [URL]
    let isLiked: Bool
    let priceTypeText: String
    let originalPriceText: String
    let discountRateText: String
    let displayPriceText: String
    let treatmentText: String
    let signatureText: String
    let shootingRangeText: String
    let shopName: String
    let designerName: String
    let designerProfileImageURL: URL?
    let region: String
    let completedTreatmentCount: Int
    let content: String

    let portfolioImageURLs: [URL]
    let shopAddress: String
    let shopImageURLs: [URL]

    init(post: PostDetailResponseDTO, designer: DesignerDetailResponseDTO) {
        
        id = post.postId
        title = post.title
        imageURLs = post.postImageUrls.compactMap { URL(string: $0) }
        isLiked = post.isLiked
        priceTypeText = Self.makePriceTypeText(from: post.priceType)
        originalPriceText = post.originalPrice?.formatted() ?? ""
        discountRateText = "\(Int(post.discountRate))%"
        displayPriceText = post.displayPrice?.formatted() ?? ""
        treatmentText = Self.makeTreatmentText(from: post.treatmentTypes)
        signatureText = Self.makeTreatmentText(from: post.signatures)
        shootingRangeText = Self.makeShootingRangeText(
            from: post.shootingRanges ?? []
        )
        shopName = post.shopName
        designerName = post.designerName
        designerProfileImageURL = URL(string: post.designerProfileImageUrl)
        region = post.region
        completedTreatmentCount = post.completedTreatmentCount
        content = post.content

        portfolioImageURLs = designer.portfolioImageUrls
            .compactMap { URL(string: $0) }
        shopAddress = designer.shopAddress
        shopImageURLs = designer.shopImageUrls
            .compactMap { URL(string: $0) }
    }

    private static func makePriceTypeText(from priceType: PostPriceType) -> String {
        switch priceType {
        case .review: "리뷰특가"
        case .free: "무료시술"
        case .negotiable: "재료비발생"
        }
    }

    private static func makeTreatmentText(from types: [PostTreatmentType]) -> String {
        types.map { type in
            switch type {
            case .cut: "컷트"
            case .perm: "펌"
            case .clinic: "클리닉"
            case .colored: "염색"
            case .straight: "매직"
            case .extensionHair: "붙임머리"
            }
        }.joined(separator: ", ")
    }

    private static func makeShootingRangeText(from ranges: [ShootingRange]) -> String {
        ranges.map { range in
            switch range {
            case .faceExposure: "얼굴 노출"
            case .video: "영상"
            case .photo: "사진"
            }
        }.joined(separator: ", ")
    }
}
