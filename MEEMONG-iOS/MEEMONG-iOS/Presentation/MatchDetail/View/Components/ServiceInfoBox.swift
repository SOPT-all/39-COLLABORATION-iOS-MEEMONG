//
//  ServiceInfoBox.swift
//  MEEMONG-iOS
//
//  Created by 김보민 on 11/11/26.
//

import SwiftUI

struct ServiceInfoBox: View {
    let matchDetail: MatchDetailModel
    
    var body: some View {
        VStack(spacing: 12){
            VStack(alignment: .leading, spacing: 4){
                HStack{
                    Text(matchDetail.title)
                        .font(.headline)
                    Spacer()
                    Image(.defaultBlack)
                }
                .frame(maxWidth: .infinity)
                .frame(height: 43)
                HStack(spacing: 8){
                    Text(matchDetail.priceTypeText)
                        .font(.body2_regular)
                        .foregroundStyle(.meemongBlue)
                        .padding(.horizontal, 6)
                        .frame(height: 24)
                        .background(.bgBlue, in: RoundedRectangle(cornerRadius: 6))
                    if !matchDetail.originalPriceText.isEmpty {
                        HStack(spacing: 4){
                            Text(matchDetail.originalPriceText)
                            Text("원")
                        }
                        .font(.body1_regular)
                        .foregroundStyle(.gray500)
                        .overlay(alignment: .center) {
                            Rectangle()
                                .frame(height: 2)
                                .foregroundStyle(.gray500)
                        }
                    }
                    Spacer()
                }
                HStack(spacing: 4){
                    HStack(spacing: 0){
                        Text(matchDetail.discountRateText)
                    }
                    .font(.title)
                    .foregroundStyle(.meemongRed)
                    
                    if !matchDetail.displayPriceText.isEmpty {
                        Text(matchDetail.displayPriceText)
                            .font(.title)
                            .foregroundStyle(.meemongBlack)
                        Text("원")
                            .font(.body2_medium)
                            .foregroundStyle(.gray700)
                        Spacer()
                    }
                }
            }
            HStack(spacing: 12){
                VStack(alignment: .leading, spacing: 8){
                    Text("시술 종류")
                    Text("시그니처")
                    Text("촬영범위")
                    Text("매장명")
                }
                .font(.body2_semiBold)
                .foregroundStyle(.gray500)
                
                VStack(alignment: .leading, spacing: 8){
                    Text(matchDetail.treatmentText)
                    Text(matchDetail.signatureText)
                    Text(matchDetail.shootingRangeText)
                    Text(matchDetail.shopName)
                }
                .font(.body2_regular)
                .foregroundStyle(.meemongBlack)
                Spacer()
            }
            .padding(12)
            .frame(maxWidth: .infinity)
            .background(.gray50, in: RoundedRectangle(cornerRadius: 12))
        }
        .padding(16)
    }
}
