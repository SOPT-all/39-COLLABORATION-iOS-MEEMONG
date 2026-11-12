//
//  HorizontalCardSection.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/11/26.
//

import SwiftUI

struct HorizontalCardSection<Header: View, Content: View>: View {
    private let cardSpacing: CGFloat
    private let cardHeight: CGFloat
    private let header: Header
    private let content: Content

    init(
        cardHeight: CGFloat = 224,
        cardSpacing: CGFloat = 8,
        @ViewBuilder header: () -> Header,
        @ViewBuilder content: () -> Content
    ) {
        self.cardSpacing = cardSpacing
        self.cardHeight = cardHeight
        self.header = header()
        self.content = content()
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            header
                .frame(height: 24)
                .padding(.horizontal, 20)

            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: cardSpacing) {
                    content
                }
                .frame(height: cardHeight)
                .padding(.horizontal, 20)
            }
        }
    }
}
