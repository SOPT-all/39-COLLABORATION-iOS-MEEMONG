//
//  DesignerInfo.swift
//  MEEMONG-iOS
//
//  Created by 김보민 on 11/12/26.
//

import SwiftUI

struct DesignerInfo: View {
    let shopName: String
    let designerDetail: DesignerDetailResponseDTO
    
    var body: some View {
        ScrollView{
            VStack(spacing: 16){
                PortfolioGrid(portfolioImageUrls: designerDetail.portfolioImageUrls)
                    .padding(.top, 16)
                StoreInfo(shopName: shopName, designerDetail: designerDetail)
                SNSInfo()
            }
        }
    }
}
