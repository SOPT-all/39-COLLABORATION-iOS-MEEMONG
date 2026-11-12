//
//  HairItemSection.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/12/26.
//

import SwiftUI

struct HairItemSection: View {
    let hairItems: [HairItemModel]

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            VStack(alignment: .leading, spacing: 6) {
                Text("긴 곱슬머리에 딱 맞는 헤어템")
                    .font(.body1_semiBold)
                    .frame(height: 24)
                Text("모발 특성과 길이에 맞는 헤어템을 모아봤어요!")
                    .font(.pretendard(.regular, size: 13))
            }
            .foregroundStyle(.gray950)

            HStack(spacing: 11) {
                ForEach(hairItems) { hairItem in
                    HairItemCard(hairItem: hairItem)
                }
            }

            HStack(spacing: 4) {
                Text("나에게 맞는 헤어템 더 보러 가기")
                    .font(.cap1_medium)
                    .foregroundStyle(.meemongBlue)
                Image(.iconsProductArrow)
                    .frame(width: 16, height: 16)
            }
            .frame(maxWidth: .infinity)
            .frame(height: 38)
            .background(.bgBlue, in: RoundedRectangle(cornerRadius: 5))
        }
        .padding(.horizontal, 20)
    }
}
