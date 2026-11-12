//
//  HomeQuickMenu.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/11/26.
//

import SwiftUI

struct HomeQuickMenu: View {
    enum Item: String, CaseIterable, Identifiable {
        case review, free, partner, consultation, quickMatching, rank

        var id: Self { self }

        var title: String {
            switch self {
            case .review: "리뷰특가"
            case .free: "무료시술"
            case .partner: "안심매칭"
            case .consultation: "컨설팅"
            case .quickMatching: "빠른매칭"
            case .rank: "상담랭킹"
            }
        }

        var icon: ImageResource {
            switch self {
            case .review: .iconsReview
            case .free: .iconsFree
            case .partner: .iconsPartner
            case .consultation: .iconsConsultation
            case .quickMatching: .iconsQuickMatching
            case .rank: .iconsRank
            }
        }
    }

    let onSelect: (Item) -> Void

    private let columns = Array(
        repeating: GridItem(.fixed(56), spacing: 56, alignment: .top),
        count: 3
    )

    var body: some View {
        LazyVGrid(columns: columns, alignment: .center, spacing: 16) {
            ForEach(Item.allCases) { item in
                menuButton(item)
            }
        }
        .padding(.vertical, 8)
        .background(.meemongWhite)
    }

    private func menuButton(_ item: Item) -> some View {
        Button {
            if item == .quickMatching {
                onSelect(item)
            }
        } label: {
            VStack(spacing: 8) {
                Image(item.icon)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .frame(width: 50, height: 50)
                    .background(.gray50, in: RoundedRectangle(cornerRadius: 16))
                    .overlay {
                        RoundedRectangle(cornerRadius: 16)
                            .strokeBorder(.gray100, lineWidth: 1)
                    }

                Text(item.title)
                    .font(.body2_regular)
                    .foregroundStyle(.gray900)
                    .frame(height: 20)
                    .fixedSize(horizontal: true, vertical: false)
            }
            .padding(.top, item == .free ? 3 : 0)
            .frame(maxWidth: .infinity)
            .frame(height: 85, alignment: .top)
            .contentShape(Rectangle())
        }
        .buttonStyle(.plain)
        .allowsHitTesting(item == .quickMatching)
    }
}
