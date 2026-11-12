//
//  HairItemCard.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/12/26.
//

import SwiftUI

struct HairItemCard: View {
    let hairItem: HairItemModel

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image(hairItem.image)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity)
                .frame(height: 81)
                .overlay(alignment: .topTrailing) {
                    Text(hairItem.tag)
                        .font(.cap1_regular)
                        .foregroundStyle(.meemongWhite)
                        .padding(.horizontal, 8)
                        .padding(.vertical, 4)
                        .background(.black.opacity(0.5))
                        .clipShape(UnevenRoundedRectangle(bottomLeadingRadius: 8))
                }

            productInfo
                .padding(.horizontal, 8)
                .padding(.vertical, 12)
        }
        .frame(maxWidth: .infinity, alignment: .topLeading)
        .frame(height: 195, alignment: .top)
        .background(.meemongWhite)
        .clipShape(RoundedRectangle(cornerRadius: 6))
        .overlay {
            RoundedRectangle(cornerRadius: 6)
                .strokeBorder(.gray300, lineWidth: 1)
        }
    }

    private var productInfo: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(hairItem.title)
                .font(.body2_medium)
                .foregroundStyle(.gray700)
                .lineSpacing(3)
                .lineLimit(2)
                .frame(height: 40, alignment: .topLeading)

            Text(hairItem.originalPrice)
                .font(.cap2_medium)
                .foregroundStyle(.gray500)
                .strikethrough()
                .frame(height: 16)

            HStack(spacing: 2) {
                Text("\(hairItem.discountRate)%")
                    .foregroundStyle(.meemongRed)
                Text(hairItem.salePrice)
                    .foregroundStyle(.meemongBlack)
                Text("원")
                    .font(.body1_regular)
                    .foregroundStyle(.gray600)
            }
            .font(.body1_semiBold)
            .frame(height: 24)
        }
    }
}

#Preview {
    HStack(spacing: 11) {
        ForEach(HairItemModel.samples) { hairItem in
            HairItemCard(hairItem: hairItem)
        }
    }
    .frame(width: 335)
}
