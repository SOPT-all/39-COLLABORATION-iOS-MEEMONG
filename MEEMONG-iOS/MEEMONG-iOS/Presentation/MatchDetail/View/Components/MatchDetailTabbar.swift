//
//  MatchDetailTabbar.swift
//  MEEMONG-iOS
//
//  Created by 김보민 on 11/11/26.
//

import SwiftUI

struct MatchDetailTabbar: View {
    @State private var selectedTab: DetailTab = .detail
    let content: String
    let shopName: String
    let designerDetail: DesignerDetailResponseDTO?
    
    var body: some View {
        VStack{
            CustomDetailTabbar(selectedTab: $selectedTab)
            switch selectedTab {
            case .detail:
                ServiceDetailInfo(content: content)
            case .designerinfo:
                if let designerDetail {
                    DesignerInfo(shopName: shopName, designerDetail: designerDetail)
                }
            }
        }
    }
}
