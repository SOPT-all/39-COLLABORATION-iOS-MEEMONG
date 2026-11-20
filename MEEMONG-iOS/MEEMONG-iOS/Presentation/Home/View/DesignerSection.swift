//
//  DesignerSection.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/11/26.
//

import SwiftUI

struct DesignerSection: View {
    let title: String
    let designers: [DesignerModel]

    var body: some View {
        HorizontalCardSection {
            header
        } content: {
            ForEach(designers) { designer in
                DesignerCard(designer: designer)
            }
        }
    }

    private var header: some View {
        HStack {
            Text(title)
                .meemongFont(.body1_semiBold)
                .foregroundStyle(.gray950)

            Spacer()

            Button {} label: {
                HStack(spacing: 6) {
                    Text("더보기")
                        .meemongFont(.cap1_medium)
                        .foregroundStyle(.gray600)

                    Image(.iconsMore)
                        .frame(width: 12, height: 12)
                }
                .frame(minHeight: 24)
                .contentShape(Rectangle())
            }
        }
    }
}
