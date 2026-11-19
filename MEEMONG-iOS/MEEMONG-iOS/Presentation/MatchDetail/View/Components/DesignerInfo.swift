//
//  DesignerInfo.swift
//  MEEMONG-iOS
//
//  Created by 김보민 on 11/12/26.
//

import SwiftUI

struct DesignerInfo: View {
    let matchDetail: MatchDetailModel
    
    var body: some View {
        ScrollView{
            VStack(spacing: 16){
                PortfolioGrid(portfolioImageUrls: matchDetail.portfolioImageURLs)
                    .padding(.top, 16)
                StoreInfo(matchDetail: matchDetail)
                SNSInfo()
            }
        }
    }
}
