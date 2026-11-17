struct RecommendedPostListResponseDTO: Decodable {
    let posts: [RecommendedPostResponseDTO]
}

struct RecommendedPostResponseDTO: Decodable {
    let postId: Int64
    let title: String
    let thumbnailUrl: String
    let priceType: String
    let displayPrice: Int?
    let region: String
    let availableTimes: [String]
    let treatmentTypes: [String]
    let isLiked: Bool
    let createdAt: String
}

struct GeneralPostListResponseDTO: Decodable {
    let posts: [GeneralPostResponseDTO]
}

// 일반 공고는 스웨거 응답 예시의 디자이너 필드를 기준으로 정의합니다.
struct GeneralPostResponseDTO: Decodable {
    let postId: Int64
    let title: String
    let designerName: String
    let designerProfileImageUrl: String
    let priceType: String
    let displayPrice: Int?
    let region: String
    let availableTimes: [String]
    let treatmentTypes: [String]
    let isLiked: Bool
    let createdAt: String
}

struct PostLikeResponseDTO: Decodable {
    let isLiked: Bool
}
