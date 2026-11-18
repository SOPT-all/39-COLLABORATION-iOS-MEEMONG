//
//  QuickMatchView.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/13/26.
//

import SwiftUI

struct QuickMatchView: View {
    @Environment(\.dismiss)
    private var dismiss
    @State private var recommendedPosts: RecommendedPostsViewModel
    @State private var generalPosts = GeneralPostsViewModel()
    @State private var selectedType: MemberType = .designer

    init(recommendedPosts: RecommendedPostsViewModel? = nil) {
        _recommendedPosts = State(
            initialValue: recommendedPosts ?? RecommendedPostsViewModel()
        )
    }

    var body: some View {
        VStack(spacing: 0) {
            TopNavigationBar {
                dismiss()
            }

            QuickMatchHeader(selectedType: $selectedType)

            switch selectedType {
            case .designer:
                QuickMatchDesignerView(
                    viewModel: recommendedPosts,
                    generalViewModel: generalPosts
                )
            case .model:
                QuickMatchModelView()
            }
        }
        .ignoresSafeArea(.container, edges: .bottom)
        .toolbar(.hidden, for: .navigationBar)
    }
}

#Preview {
    QuickMatchView()
}
