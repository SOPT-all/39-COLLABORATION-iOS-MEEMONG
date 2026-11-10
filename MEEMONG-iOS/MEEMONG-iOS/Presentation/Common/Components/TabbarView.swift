//
//  TabbarView.swift
//  MEEMONG-iOS
//
//  Created by 김보민 on 11/9/26.
//

import SwiftUI

struct TabbarView: View {
    @State private var selectedTab: MainTab = .home

    var body: some View {
        Spacer()

        VStack(spacing: 0) {
            Spacer()

            switch selectedTab {
            case .home:
                Text("홈 뷰 화면입니다.")
            default:
                EmptyView()
            }

            Spacer()

            CustomTabBarView(selectedTab: $selectedTab)
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}
