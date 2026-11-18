//
//  QuickMatchSection.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/12/26.
//

import SwiftUI

struct QuickMatchSection: View {
    let quickMatches: [MatchPostModel]
    let onMore: () -> Void

    var body: some View {
        HorizontalCardSection(cardHeight: 162) {
            header
        } content: {
            ForEach(quickMatches) { quickMatch in
                QuickMatchCard(quickMatch: quickMatch)
            }
        }
    }

    private var header: some View {
        HStack {
            Text("미몽추천 빠른매칭글")
                .font(.body1_semiBold)
                .foregroundStyle(.gray950)

            Spacer()

            Button(action: onMore) {
                HStack(spacing: 6) {
                    Text("더보기")
                        .font(.cap1_medium)
                        .foregroundStyle(.gray600)

                    Image(.iconsMore)
                        .frame(width: 12, height: 12)
                }
                .frame(minHeight: 24)
            }
            .buttonStyle(.plain)
        }
    }
}
