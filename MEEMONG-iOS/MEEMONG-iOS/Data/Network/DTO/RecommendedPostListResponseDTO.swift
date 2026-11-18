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

enum PostPriceType: String, Decodable {
    case review = "REVIEW"
    case free = "FREE"
    case negotiable = "NEGOTIABLE"
}

enum PostAvailableTime: String, Decodable {
    case weekdayMorning = "WEEKDAY_MORNING"
    case weekdayAfternoon = "WEEKDAY_AFTERNOON"
    case anytime = "ANYTIME"
}

enum PostTreatmentType: String, Decodable {
    case cut = "CUT"
    case perm = "PERM"
    case clinic = "CLINIC"
    case colored = "COLORED"
    case straight = "STRAIGHT"
    case extensionHair = "EXTENSION"
}
