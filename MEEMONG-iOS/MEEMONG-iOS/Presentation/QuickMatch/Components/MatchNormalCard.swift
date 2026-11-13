//
//  MatchNormalCard.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/13/26.
//

import SwiftUI

struct MatchNormalCard: View {
    let post: MatchPostModel

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            VStack(alignment: .leading, spacing: 8) {
                authorInfo

                Text(post.title)
                    .font(.body1_semiBold)
                    .foregroundStyle(.gray700)
                    .frame(maxWidth: .infinity, alignment: .leading)

                HStack(spacing: 8) {
                    Text(post.treatment.title)
                        .font(.body2_semiBold)
                        .foregroundStyle(post.treatment.color)
                        .lineLimit(1)
                    if !post.price.isEmpty {
                        Text("·")
                        Text(post.price)
                            .foregroundStyle(.gray900)
                    }
                    Text("·")
                    Text(post.availableTime)
                        .lineLimit(1)
                }
                .font(.body2_medium)
                .foregroundStyle(.gray600)
            }

            HStack(spacing: 8) {
                ForEach(post.tags, id: \.self) { tag in
                    TagChip(title: tag)
                }
            }
        }
        .padding(12)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(.meemongWhite, in: RoundedRectangle(cornerRadius: 6))
        .overlay {
            RoundedRectangle(cornerRadius: 6)
                .strokeBorder(.gray300, lineWidth: 1)
        }
    }

    private var authorInfo: some View {
        HStack(spacing: 8) {
            Image(post.image)
                .resizable()
                .scaledToFill()
                .frame(width: 20, height: 20)
                .clipShape(Circle())
            
            Text(post.author)
                .lineLimit(1)
                .frame(maxWidth: 84, alignment: .leading)
                .fixedSize(horizontal: true, vertical: false)
            
            Text("·")
            
            Text(post.postedAt)
                .fixedSize()
            
            Text("·")
            Text(post.location)
                .lineLimit(1)

            Spacer(minLength: 0)

            HeartButton()
        }
        .font(.cap1_regular)
        .foregroundStyle(.gray600)
    }
}
