//
//  QuickMatchViewModel.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/19/26.
//

import Foundation
import Observation

@MainActor
@Observable
final class QuickMatchViewModel {
    private(set) var recommendedPosts: [RecommendedPostListResponseDTO.Post] = []
    private(set) var generalPosts: [GeneralPostListResponseDTO.Post] = []
    private(set) var updatingLikeIDs: Set<Int64> = []

    private let service = BaseService.shared

    func load() async {
        guard updatingLikeIDs.isEmpty else { return }
        recommendedPosts = []
        generalPosts = []

        try? await loadRecommendedPosts()
        try? await loadGeneralPosts()
    }

    func toggleLike(postID: Int64) async throws -> Bool? {
        guard !updatingLikeIDs.contains(postID),
            let isLiked = recommendedPosts.first(where: { $0.postId == postID })?.isLiked
                ?? generalPosts.first(where: { $0.postId == postID })?.isLiked else {
            return nil
        }

        updatingLikeIDs.insert(postID)
        defer { updatingLikeIDs.remove(postID) }

        let endPoint: EndPoint = isLiked ? .unlike(postID) : .like(postID)
        let response: PostLikeResponseDTO = try await service.request(endPoint: endPoint)
        updateLike(postID: postID, isLiked: response.isLiked)
        return response.isLiked
    }

    func updateLike(postID: Int64, isLiked: Bool) {
        if let index = recommendedPosts.firstIndex(where: { $0.postId == postID }) {
            recommendedPosts[index].isLiked = isLiked
        }
        if let index = generalPosts.firstIndex(where: { $0.postId == postID }) {
            generalPosts[index].isLiked = isLiked
        }
    }

    private func loadRecommendedPosts() async throws {
        let response: RecommendedPostListResponseDTO = try await service.request(
            endPoint: .recommendedPosts
        )
        let datedPosts = try response.posts.map { post in
            (post: post, date: try Date(iso8601String: post.createdAt))
        }

        recommendedPosts = datedPosts.sorted { $0.date > $1.date }.prefix(4).map(\.post)
    }

    private func loadGeneralPosts() async throws {
        let response: GeneralPostListResponseDTO = try await service.request(
            endPoint: .generalPosts
        )
        let datedPosts = try response.posts.map { post in
            (post: post, date: try Date(iso8601String: post.createdAt))
        }

        generalPosts = datedPosts.sorted { $0.date > $1.date }.prefix(4).map(\.post)
    }
}
