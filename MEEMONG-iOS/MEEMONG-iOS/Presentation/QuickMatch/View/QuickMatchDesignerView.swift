//
//  QuickMatchDesignerView.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/13/26.
//

import SwiftUI

struct QuickMatchDesignerView: View {
    let viewModel: RecommendedPostsViewModel
    let generalViewModel: GeneralPostsViewModel

    var body: some View {
        QuickMatchPostList(
            recommendedPosts: viewModel.posts.map { MatchPostModel(recommendedPost: $0) },
            normalPosts: generalViewModel.posts.map { MatchPostModel(generalPost: $0) }
        )
        .task {
            try? await viewModel.load()
            try? await generalViewModel.load()
        }
    }
}
