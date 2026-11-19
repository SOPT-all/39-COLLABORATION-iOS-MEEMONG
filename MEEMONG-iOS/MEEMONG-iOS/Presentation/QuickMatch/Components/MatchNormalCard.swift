//
//  MatchNormalCard.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/13/26.
//

import Kingfisher
import SwiftUI

struct MatchNormalCard: View {
    let post: MatchPostModel
    var isUpdatingLike = false
    let onLike: () -> Void
    let onSelect: () -> Void

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            VStack(alignment: .leading, spacing: 8) {
                authorInfo

                Text(post.title)
                    .font(.body1_semiBold)
                    .foregroundStyle(.gray700)
                    .lineLimit(1)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .frame(height: 24, alignment: .leading)

                HStack(spacing: 8) {
                    Text(post.treatment.title)
                        .font(.body2_semiBold)
                        .foregroundStyle(post.treatment.color)
                        .lineLimit(1)
                    if !post.price.isEmpty {
                        Circle()
                            .fill(.gray500)
                            .frame(width: 3, height: 3)
                        Text(post.price)
                            .foregroundStyle(.gray900)
                    }
                    Circle()
                        .fill(.gray500)
                        .frame(width: 3, height: 3)
                    Text(post.availableTime)
                        .lineLimit(1)
                }
                .frame(height: 20)
                .font(.body2_medium)
                .foregroundStyle(.gray600)
            }

            HStack(spacing: 8) {
                ForEach(post.tags, id: \.self) { tag in
                    TagChip(title: tag)
                }
            }
        }
        .allowsHitTesting(false)
        .overlay(alignment: .topTrailing) {
            if post.isRemotePost {
                PostLikeButton(
                    isLiked: post.isLiked,
                    isUpdating: isUpdatingLike,
                    action: onLike
                )
            } else {
                HeartButton()
            }
        }
        .padding(12)
        .frame(maxWidth: .infinity, minHeight: 142, alignment: .leading)
        .background {
            RoundedRectangle(cornerRadius: 6)
                .fill(.meemongWhite)
                .onTapGesture {
                    guard !isUpdatingLike else { return }
                    onSelect()
                }
        }
        .overlay {
            RoundedRectangle(cornerRadius: 6)
                .strokeBorder(.gray300, lineWidth: 1)
        }
    }

    private var authorInfo: some View {
        HStack(spacing: 8) {
            authorImage
            
            Text(post.author)
                .lineLimit(1)
                .frame(maxWidth: 84, alignment: .leading)
                .fixedSize(horizontal: true, vertical: false)
            
            Circle()
                .fill(.gray500)
                .frame(width: 3, height: 3)
            
            Text(post.postedAt)
                .fixedSize()
            
            Circle()
                .fill(.gray500)
                .frame(width: 3, height: 3)
            Text(post.location)
                .lineLimit(1)

            Spacer(minLength: 0)

            Color.clear
                .frame(width: 20, height: 20)
        }
        .font(.cap1_regular)
        .foregroundStyle(.gray600)
    }

    private var authorImage: some View {
        Group {
            if post.isRemotePost {
                KFImage(post.profileImageURL)
                    .placeholder {
                        Image(.matchAuthor)
                            .resizable()
                            .scaledToFill()
                    }
                    .resizable()
                    .scaledToFill()
            } else {
                Image(post.image).resizable().scaledToFill()
            }
        }
        .frame(width: 20, height: 20)
        .clipShape(Circle())
    }
}
