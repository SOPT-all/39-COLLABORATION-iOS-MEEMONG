//
//  HomeView.swift
//  MEEMONG-iOS
//
//  Created by 김세령 on 11/10/26.
//

import SwiftUI

struct HomeView: View {
    var onQuickMenuSelect: (HomeQuickMenu.Item) -> Void = { _ in
        // TODO: 메뉴별 목적 화면이 구현되면 화면 이동을 연결합니다.
    }

    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            MainHeader()
                .padding(.bottom, 16)

            ScrollView(showsIndicators: false) {
                VStack(spacing: 0) {
                    Image(.banner02)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: .infinity)
                        .padding(.horizontal, 20)
                        .padding(.bottom, 20)

                    HomeQuickMenu(onSelect: onQuickMenuSelect)

                    VStack(alignment: .center, spacing: 32) {
                        DesignerSection(
                            title: "내 주변 디자이너",
                            designers: DesignerModel.nearbySamples
                        )

                        DesignerSection(
                            title: "세령님을 위한 추천 디자이너",
                            designers: DesignerModel.recommendSamples
                        )

                        DesignerSection(
                            title: "무료시술 디자이너",
                            designers: DesignerModel.freeSamples
                        )

                        DesignerSection(
                            title: "뷰티시술 디자이너",
                            designers: DesignerModel.beautySamples
                        )

                        QuickMatchSection(
                            quickMatches: QuickMatchModel.samples
                        )

                        HairItemSection(
                            hairItems: HairItemModel.samples
                        )

                        HairConsultingSection(
                            consultings: HairConsultingModel.samples
                        )
                    }
                    .padding(.top, 24)
                    .padding(.bottom, 119)
                }
            }
            .overlay(alignment: .bottomTrailing) {
                FloatingButton(bottomPadding: 22)
            }

            CustomTabBarView(selectedTab: .constant(.home))
        }
        .ignoresSafeArea(.container, edges: .bottom)
    }
}
