//
//  HomeView.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/10/26.
//

import SwiftUI

struct HomeView: View {
    @State private var showQuickMatch = false
    @State private var selectedPostID: Int64?
    @State private var viewModel = HomeViewModel()

    var body: some View {
        NavigationStack {
            VStack(alignment: .center, spacing: 0) {
                MainHeader()

                ScrollView(showsIndicators: false) {
                    VStack(spacing: 0) {
                        Image(.banner02)
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: .infinity)
                            .padding(.horizontal, 20)
                            .padding(.bottom, 20)
                            .padding(.top, 16)

                        HomeQuickMenu { item in
                            if item == .quickMatching {
                                openQuickMatch()
                            }
                        }

                        VStack(alignment: .center, spacing: 32) {
                            DesignerSection(
                                title: "내 주변 디자이너",
                                designers: DesignerModel.nearbySamples
                            )

                            DesignerSection(
                                title: "세령님을 위한 추천 디자이너",
                                designers: DesignerModel.recommendSamples
                            )

                            DesignerSection(
                                title: "무료시술 디자이너",
                                designers: DesignerModel.freeSamples
                            )

                            DesignerSection(
                                title: "뷰티시술 디자이너",
                                designers: DesignerModel.beautySamples
                            )

                            QuickMatchSection(
                                quickMatches: viewModel.recommendedPosts.map {
                                    MatchPostModel(recommendedPost: $0)
                                },
                                onMore: openQuickMatch,
                                onSelect: { post in
                                    selectedPostID = Int64(post.id)
                                },
                                updatingLikeIDs: viewModel.updatingLikeIDs,
                                onLike: { postID in
                                    try await viewModel.toggleLike(postID: postID)
                                }
                            )

                            HairItemSection(
                                hairItems: HairItemModel.samples
                            )

                            HairConsultingSection(
                                consultings: HairConsultingModel.samples
                            )
                        }
                        .padding(.top, 24)
                        .padding(.bottom, 119)
                    }
                }
                CustomTabBarView(selectedTab: .constant(.home))
            }
            .overlay(alignment: .bottomTrailing) {
                FloatingButton()
            }
            .ignoresSafeArea(.container, edges: .bottom)
            .toolbar(.hidden, for: .navigationBar)
            .task { try? await viewModel.load() }
            .navigationDestination(isPresented: $showQuickMatch) {
                QuickMatchView { postID, isLiked in
                    viewModel.updateLike(postID: postID, isLiked: isLiked)
                }
            }
            .navigationDestination(item: $selectedPostID) { postID in
                MatchDetailView(postId: postID) { postID, isLiked in
                    viewModel.updateLike(postID: postID, isLiked: isLiked)
                }
            }
        }
    }

    private func openQuickMatch() {
        guard viewModel.updatingLikeIDs.isEmpty else { return }
        showQuickMatch = true
    }
}
