//
//  QuickMatchPostList.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/13/26.
//

import SwiftUI

struct QuickMatchPostList: View {
    let recommendedPosts: [MatchPostModel]
    let normalPosts: [MatchPostModel]

    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 0) {
                VStack(alignment: .leading, spacing: 8) {
                    Text("미몽추천 공고")
                        .font(.body1_semiBold)
                        .foregroundStyle(.gray950)
                        .frame(height: 24)

                    ForEach(recommendedPosts) { post in
                        MatchRecommendedCard(quickMatch: post)
                    }

                    HStack(spacing: 4) {
                        Text("미몽추천 공고 더보기")
                        
                        Image(.iconsMore)
                            .rotationEffect(.degrees(90))
                            .frame(width: 12, height: 12)
                    }
                    .font(.body2_regular)
                    .foregroundStyle(.gray700)
                    .frame(maxWidth: .infinity)
                    .frame(height: 38)
                    .background(.meemongWhite, in: RoundedRectangle(cornerRadius: 5))
                    .overlay {
                        RoundedRectangle(cornerRadius: 5)
                            .strokeBorder(.gray300, lineWidth: 1)
                    }
                }
                .padding(20)

                Image(.banner01)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)

                VStack(alignment: .leading, spacing: 8) {
                    Text("일반 공고")
                        .font(.body1_semiBold)
                        .foregroundStyle(.gray950)
                        .frame(height: 24)

                    ForEach(normalPosts) { post in
                        MatchNormalCard(post: post)
                    }
                }
                .padding(.horizontal, 20)
                .padding(.top, 20)
                .padding(.bottom, 128)
            }
        }
        .contentMargins(.bottom, 0, for: .scrollContent)
        .background(.gray100)
        .overlay(alignment: .bottomTrailing) {
            FloatingButton(menu: .quickMatch, bottomPadding: 116)
        }
    }
}
