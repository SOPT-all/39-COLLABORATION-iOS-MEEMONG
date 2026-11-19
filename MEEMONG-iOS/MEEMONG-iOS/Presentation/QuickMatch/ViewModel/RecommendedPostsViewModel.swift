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
    private(set) var updatingLikeIDs: Set<Int64> = []

    private let service = BaseService.shared

    func load() async throws {
        guard updatingLikeIDs.isEmpty else { return }
        posts = []

        let response: RecommendedPostListResponseDTO = try await service.request(
            endPoint: .recommendedPosts
        )
        let datedPosts = try response.posts.map { post in
            (post: post, date: try Date(iso8601String: post.createdAt))
        }

        posts = datedPosts.sorted { $0.date > $1.date }.prefix(4).map(\.post)
    }

    func toggleLike(postID: Int64) async throws {
        guard !updatingLikeIDs.contains(postID),
            let post = posts.first(where: { $0.postId == postID }) else { return }

        updatingLikeIDs.insert(postID)
        defer { updatingLikeIDs.remove(postID) }

        let endPoint: EndPoint = post.isLiked ? .unlike(postID) : .like(postID)
        let response: PostLikeResponseDTO = try await service.request(endPoint: endPoint)
        updateLike(postID: postID, isLiked: response.isLiked)
    }

    func updateLike(postID: Int64, isLiked: Bool) {
        guard let index = posts.firstIndex(where: { $0.postId == postID }) else { return }
        posts[index].isLiked = isLiked
    }
}
