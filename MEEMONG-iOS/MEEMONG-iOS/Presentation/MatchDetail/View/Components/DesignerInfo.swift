//
//  DesignerInfo.swift
//  MEEMONG-iOS
//
//  Created by 김보민 on 11/12/26.
//

import SwiftUI

struct DesignerInfo: View {
    var body: some View {
        ScrollView{
            VStack(spacing: 16){
                PortfolioGrid()
                    .padding(.top, 16)
                StoreInfo()
                SNSInfo()
            }
        }
    }
}
