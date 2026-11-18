//
//  RecommendedPostListResponseDTO.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/17/26.
//

struct RecommendedPostListResponseDTO: Decodable {
    let posts: [Post]

    struct Post: Decodable {
        let postId: Int64
        let title: String
        let thumbnailUrl: String
        let priceType: PostPriceType
        let displayPrice: Int?
        let region: String
        let availableTimes: [PostAvailableTime]
        let treatmentTypes: [PostTreatmentType]
        let isLiked: Bool
        let createdAt: String
    }
}
