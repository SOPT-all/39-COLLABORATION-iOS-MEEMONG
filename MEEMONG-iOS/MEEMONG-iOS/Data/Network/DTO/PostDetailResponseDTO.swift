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
    let priceType: PostPriceType
    let discountRate: Double?
    let originalPrice: Int?
    let displayPrice: Int?
    let treatmentTypes: [PostTreatmentType]
    let signatures: [PostTreatmentType]
    let shootingRanges: [ShootingRange]?
    let shopName: String
    let designerId: Int64
    let designerName: String
    let designerProfileImageUrl: String
    let region: String
    let completedTreatmentCount: Int
    let content: String
}

enum ShootingRange: String, Decodable {
    case faceExposure = "FACE_EXPOSURE"
    case video = "VIDEO"
    case photo = "PHOTO"
}
