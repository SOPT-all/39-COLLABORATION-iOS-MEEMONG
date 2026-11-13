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
                .padding(20)
            }
        }
        .background(.gray100)
        .overlay(alignment: .bottomTrailing) {
            VStack(spacing: 0) {
                Image(.iconsPen)
                    .frame(width: 20, height: 20)
                Text("글쓰기")
                    .font(.cap2_semibold)
                    .foregroundStyle(.meemongWhite)
            }
            .frame(width: 60, height: 60)
            .background(.gray900, in: Circle())
            .shadow(radius: 5.7)
            .padding(.trailing, 20)
            .padding(.bottom, 22)
        }
    }
}
