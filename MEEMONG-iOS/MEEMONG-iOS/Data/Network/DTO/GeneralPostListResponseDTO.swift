//
//  GeneralPostListResponseDTO.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/18/26.
//

struct GeneralPostListResponseDTO: Decodable {
    let posts: [Post]

    struct Post: Decodable {
        let postId: Int64
        let title: String
        let designerName: String
        let designerProfileImageUrl: String
        let priceType: PostPriceType
        let displayPrice: Int?
        let region: String
        let availableTimes: [PostAvailableTime]
        let treatmentTypes: [PostTreatmentType]
        let isLiked: Bool
        let createdAt: String
    }
}
