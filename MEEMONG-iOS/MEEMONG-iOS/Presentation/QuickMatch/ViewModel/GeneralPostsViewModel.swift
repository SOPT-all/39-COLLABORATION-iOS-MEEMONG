//
//  GeneralPostsViewModel.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/18/26.
//

import Foundation
import Observation

@MainActor
@Observable
final class GeneralPostsViewModel {
    private(set) var posts: [GeneralPostListResponseDTO.Post] = []

    private let service = BaseService.shared

    func load() async throws {
        posts = []

        let response: GeneralPostListResponseDTO = try await service.request(
            endPoint: .generalPosts
        )
        let datedPosts = try response.posts.map { post in
            (post: post, date: try Date(iso8601String: post.createdAt))
        }

        posts = datedPosts.sorted { $0.date > $1.date }.prefix(4).map(\.post)
    }
}
