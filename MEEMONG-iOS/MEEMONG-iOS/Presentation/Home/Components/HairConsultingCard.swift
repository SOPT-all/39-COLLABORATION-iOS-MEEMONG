//
//  HairConsultingCard.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/12/26.
//

import SwiftUI

struct HairConsultingCard: View {
    let consulting: HairConsultingModel

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            VStack(alignment: .leading, spacing: 4) {
                Text(consulting.title)
                    .font(.body1_semiBold)
                    .foregroundStyle(.meemongBlack)
                    .lineLimit(1)
                    .frame(height: 24, alignment: .leading)

                Text(consulting.content)
                    .font(.body2_regular)
                    .foregroundStyle(.gray600)
                    .lineSpacing(3)
                    .lineLimit(2)
                    .frame(height: 40, alignment: .topLeading)
            }

            commentInfo
        }
        .padding(12)
        .frame(width: 189, height: 125)
        .background(.meemongWhite)
        .clipShape(RoundedRectangle(cornerRadius: 6))
        .overlay {
            RoundedRectangle(cornerRadius: 6)
                .strokeBorder(.gray300, lineWidth: 1)
        }
    }

    private var commentInfo: some View {
        HStack(spacing: 10) {
            Text(consulting.postedAt)
                .font(.cap1_regular)

            HStack(spacing: 4) {
                Image(.iconsComment)
                    .frame(width: 16, height: 16)
                Text("\(consulting.commentCount)")
                    .font(.body2_semiBold)
            }

            Spacer(minLength: 0)
        }
        .foregroundStyle(.gray600)
        .frame(height: 21)
    }
}

#Preview {
    HStack(spacing: 6) {
        ForEach(HairConsultingModel.samples.prefix(2)) { consulting in
            HairConsultingCard(consulting: consulting)
        }
    }
}
