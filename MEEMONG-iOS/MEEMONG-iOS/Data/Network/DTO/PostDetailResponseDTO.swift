//
//  PostDetailResponseDTO.swift
//  MEEMONG-iOS
//
//  Created by 김보민 on 11/17/26.
//

struct PostDetailResponseDTO: Decodable {
    let postId: Int64
    let title: String
    let postImageUrls: [String]
    var isLiked: Bool
    let priceType: String
    let discountRate: Double?
    let originalPrice: Int?
    let displayPrice: Int?
    let treatmentTypes: [String]
    let signatures: [String]
    let shootingRanges: [String]?
    let shopName: String
    let designerId: Int64
    let designerName: String
    let designerProfileImageUrl: String
    let region: String
    let completedTreatmentCount: Int
    let content: String
}
