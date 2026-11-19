//
//  MatchDetailTabbar.swift
//  MEEMONG-iOS
//
//  Created by 김보민 on 11/11/26.
//

import SwiftUI

struct MatchDetailTabbar: View {
    @State private var selectedTab: DetailTab = .detail
    let matchDetail: MatchDetailModel
    
    var body: some View {
        VStack{
            CustomDetailTabbar(selectedTab: $selectedTab)
            switch selectedTab {
            case .detail:
                ServiceDetailInfo(content: matchDetail.content)
            case .designerinfo:
                DesignerInfo(matchDetail: matchDetail)
            }
        }
    }
}
