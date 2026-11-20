//
//  QuickMatchCard.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/12/26.
//

import SwiftUI

struct QuickMatchCard: View {
    let quickMatch: MatchPostModel
    var isUpdatingLike = false
    let onLike: () -> Void
    let onSelect: () -> Void

    var body: some View {
        cardContent
            .contentShape(Rectangle())
            .onTapGesture {
                guard !isUpdatingLike else { return }
                onSelect()
            }
        .overlay(alignment: .topTrailing) {
            Group {
                PostLikeButton(
                    isLiked: quickMatch.isLiked,
                    isUpdating: isUpdatingLike,
                    action: onLike
                )
                .padding(.top, 2)
            }
            .padding(16)
        }
    }

    private var cardContent: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack(alignment: .top, spacing: 12) {
                PostThumbnail(post: quickMatch)

                matchInfo
            }

            tagInfo
        }
        .padding(16)
        .frame(width: 306, height: 162)
        .background(.meemongWhite)
        .clipShape(RoundedRectangle(cornerRadius: 6))
        .overlay {
            RoundedRectangle(cornerRadius: 6)
                .strokeBorder(.gray300, lineWidth: 1)
        }
    }

    private var matchInfo: some View {
        VStack(alignment: .leading, spacing: 6) {
            HStack(spacing: 6) {
                Text(quickMatch.title)
                    .meemongFont(.body1_semiBold)
                    .foregroundStyle(.gray700)
                    .lineLimit(1)
                    .frame(maxWidth: .infinity, alignment: .leading)

                Color.clear
                    .frame(width: 20, height: 20)
            }
            .frame(height: 24)

            VStack(alignment: .leading, spacing: 4) {
                HStack(spacing: 8) {
                    Image(.iconsPrice)
                        .resizable()
                        .frame(width: 14, height: 14)

                    Text(quickMatch.treatment.title)
                        .meemongFont(.body2_semiBold)
                        .foregroundStyle(quickMatch.treatment.color)
                    if !quickMatch.price.isEmpty {
                        Circle()
                            .fill(.gray500)
                            .frame(width: 4, height: 4)
                        Text(quickMatch.price)
                            .meemongFont(.body2_regular)
                    }
                }
                .foregroundStyle(.gray900)
                .fixedSize(horizontal: true, vertical: false)
                .frame(height: 20)

                HStack(spacing: 8) {
                    Image(.iconsLocation)
                        .resizable()
                        .frame(width: 14, height: 14)
                    Text(quickMatch.location)
                        .meemongFont(.cap1_regular)
                }
                .frame(height: 18)

                HStack(spacing: 8) {
                    Image(.iconsTime)
                        .resizable()
                        .frame(width: 14, height: 14)
                    Text(quickMatch.availableTime)
                        .meemongFont(.cap1_regular)
                }
                .frame(height: 18)
            }
            .foregroundStyle(.gray900)
            .lineLimit(1)
        }
    }

    private var tagInfo: some View {
        var tags = quickMatch.tags
        if quickMatch.additionalTagCount > 0 {
            tags.append("+ \(quickMatch.additionalTagCount)")
        }

        return HStack(spacing: 4) {
            ForEach(tags, id: \.self) { tag in
                TagChip(title: tag)
            }

            Spacer(minLength: 0)

            Text(quickMatch.postedAt)
                .meemongFont(.body2_regular)
                .foregroundStyle(.gray600)
                .lineLimit(1)
        }
        .frame(height: 24)
    }
}
