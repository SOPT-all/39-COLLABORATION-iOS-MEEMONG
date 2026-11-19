//
//  MatchDetailView.swift
//  MEEMONG-iOS
//
//  Created by 김보민 on 11/11/26.
//

import SwiftUI

struct MatchDetailView: View {
    @State private var viewModel = MatchDetailViewModel()
    let postId: Int64
    var onLikeChanged: (Int64, Bool) -> Void = { _, _ in }
    
    var body: some View {
        ScrollView{
            VStack(spacing: 0){
                ImageCarousel(postImageUrls: viewModel.postDetail?.postImageUrls ?? [])
                if let postDetail = viewModel.postDetail {
                    DesignerProfileRow(postDetail: postDetail)
                    ServiceInfoBox(
                        postDetail: postDetail,
                        isUpdatingLike: viewModel.isUpdatingLike
                    ) {
                        Task {
                            if let isLiked = await viewModel.toggleLike() {
                                onLikeChanged(postId, isLiked)
                            }
                        }
                    }
                }
                MatchDetailTabbar(
                    content: viewModel.postDetail?.content ?? "",
                    shopName: viewModel.postDetail?.shopName ?? "",
                    designerDetail: viewModel.designerDetail
                )
            }
        }
        .ignoresSafeArea(edges: .top)
        .toolbar(.hidden, for: .navigationBar)
        .safeAreaInset(edge: .bottom) {
            ReservationButton()
        }
        .task(id: postId) {
            await viewModel.loadMatchDetail(postId: postId)
        }
    }
}

#Preview {
    MatchDetailView(postId: 4)
}
