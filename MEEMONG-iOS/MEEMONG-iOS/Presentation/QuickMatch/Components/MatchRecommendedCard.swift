//
//  MatchRecommendedCard.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/13/26.
//

import SwiftUI

struct MatchRecommendedCard: View {
    let quickMatch: MatchPostModel

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack(alignment: .top, spacing: 12) {
                Image(quickMatch.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 92, height: 92)
                    .clipShape(RoundedRectangle(cornerRadius: 6))

                matchInfo
            }

            tagInfo
        }
        .padding(16)
        .frame(maxWidth: .infinity)
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
                    .font(.body1_semiBold)
                    .foregroundStyle(.gray700)
                    .lineLimit(1)
                    .frame(maxWidth: .infinity, alignment: .leading)

                HeartButton()
            }
            .frame(height: 24)

            VStack(alignment: .leading, spacing: 4) {
                HStack(spacing: 8) {
                    Image(.iconsPrice)
                        .resizable()
                        .frame(width: 14, height: 14)

                    Text(quickMatch.treatment.title)
                        .foregroundStyle(quickMatch.treatment.color)
                    if !quickMatch.price.isEmpty {
                        Text("·")
                            .foregroundStyle(.gray500)
                        Text(quickMatch.price)
                            .font(.body2_regular)
                    }
                }
                .font(.body2_semiBold)
                .foregroundStyle(.gray900)
                .fixedSize(horizontal: true, vertical: false)
                .frame(height: 20)

                HStack(spacing: 8) {
                    Image(.iconsLocation)
                        .resizable()
                        .frame(width: 14, height: 14)
                    Text(quickMatch.location)
                }
                .frame(height: 18)

                HStack(spacing: 8) {
                    Image(.iconsTime)
                        .resizable()
                        .frame(width: 14, height: 14)
                    Text(quickMatch.availableTime)
                }
                .frame(height: 18)
            }
            .font(.cap1_regular)
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
                .font(.body2_regular)
                .foregroundStyle(.gray600)
                .lineLimit(1)
        }
        .frame(height: 24)
    }
}
