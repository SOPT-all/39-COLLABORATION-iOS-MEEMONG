//
//  HairConsultingSection.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/12/26.
//

import SwiftUI

struct HairConsultingSection: View {
    let consultings: [HairConsultingModel]

    var body: some View {
        HorizontalCardSection(cardHeight: 125, cardSpacing: 6) {
            header
        } content: {
            ForEach(consultings) { consulting in
                HairConsultingCard(consulting: consulting)
            }
        }
    }

    private var header: some View {
        HStack {
            Text("헤어컨설팅")
                .font(.body1_semiBold)
                .foregroundStyle(.gray950)

            Spacer()

            HStack(spacing: 6) {
                Text("더보기")
                    .font(.cap1_medium)
                    .foregroundStyle(.gray600)
                Image(.iconsMore)
                    .frame(width: 12, height: 12)
            }
            .frame(minHeight: 24)
        }
    }
}
