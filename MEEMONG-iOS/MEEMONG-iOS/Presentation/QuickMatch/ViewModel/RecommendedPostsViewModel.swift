//
//  RecommendedPostsViewModel.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/18/26.
//

import Foundation
import Observation

@MainActor
@Observable
final class RecommendedPostsViewModel {
    private(set) var posts: [RecommendedPostListResponseDTO.Post] = []

    private let service = BaseService.shared

    func load() async throws {
        posts = []

        let response: RecommendedPostListResponseDTO = try await service.request(
            endPoint: .recommendedPosts
        )
        let datedPosts = try response.posts.map { post in
            (post: post, date: try MatchPostModel.makePostDate(from: post.createdAt))
        }

        posts = datedPosts.sorted { $0.date > $1.date }.prefix(4).map(\.post)
    }
}
