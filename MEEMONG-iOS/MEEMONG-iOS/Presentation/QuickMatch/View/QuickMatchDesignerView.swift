//
//  QuickMatchDesignerView.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/13/26.
//

import SwiftUI

struct QuickMatchDesignerView: View {
    let viewModel: QuickMatchViewModel
    var onLikeChanged: (Int64, Bool) -> Void = { _, _ in }

    var body: some View {
        QuickMatchPostList(
            recommendedPosts: viewModel.recommendedPosts.map {
                MatchPostModel(recommendedPost: $0)
            },
            normalPosts: viewModel.generalPosts.map { MatchPostModel(generalPost: $0) },
            updatingLikeIDs: viewModel.updatingLikeIDs,
            onLike: { postID in
                if let isLiked = try await viewModel.toggleLike(postID: postID) {
                    onLikeChanged(postID, isLiked)
                }
            },
            onLikeChanged: { postID, isLiked in
                viewModel.updateLike(postID: postID, isLiked: isLiked)
                onLikeChanged(postID, isLiked)
            }
        )
        .task {
            await viewModel.load()
        }
    }
}
