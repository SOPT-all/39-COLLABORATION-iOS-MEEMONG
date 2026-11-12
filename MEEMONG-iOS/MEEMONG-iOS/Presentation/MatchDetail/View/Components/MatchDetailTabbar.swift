//
//  MatchDetailTabbar.swift
//  MEEMONG-iOS
//
//  Created by 김보민 on 11/11/26.
//

import SwiftUI

struct MatchDetailTabbar: View {
    @State private var selectedTab: DetailTab = .detail
    var body: some View {
        VStack{
            CustomDetailTabbar(selectedTab: $selectedTab)
            switch selectedTab {
            case .detail:
                ServiceDetailInfo()
            case .designerinfo:
                Text("디자이너 정보")
            }
        }
    }
}
