//
//  StoreInfo.swift
//  MEEMONG-iOS
//
//  Created by 김보민 on 11/13/26.
//

import SwiftUI

import Kingfisher

struct StoreInfo: View {
    let matchDetail: MatchDetailModel
    
    var body: some View {
        VStack(spacing: 12){
            VStack(alignment: .leading, spacing: 4){
                Text("매장 정보")
                    .meemongFont(.body1_semiBold)
                    .frame(height: 24)
                Text(matchDetail.shopName)
                    .meemongFont(.body2_medium)
                    .foregroundStyle(.gray700)
                    .frame(height: 20)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            HStack(spacing: 0){
                Text(matchDetail.shopAddress)
                    .meemongFont(.body2_regular)
                    .lineLimit(1)
                Spacer()
                Button {} label: {
                    Image(.iconsCopy)
                        .frame(width: 44, height: 44)
                        .contentShape(Rectangle())
                }
                .accessibilityLabel("매장 주소 복사")
            }
            .frame(maxWidth: .infinity)
            .frame(height: 50)
            .padding(.horizontal, 12)
            .overlay(RoundedRectangle(cornerRadius: 8).stroke(.gray200, lineWidth: 1))
            
            Image(.map)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 14))
            
            HStack{
                ForEach(matchDetail.shopImageURLs.indices, id: \.self){ index in
                    Color.clear
                        .aspectRatio(1, contentMode: .fit)
                        .overlay {
                            KFImage(matchDetail.shopImageURLs[index])
                                .placeholder{ Color.gray100 }
                                .resizable()
                                .scaledToFill()
                        }
                        .clipShape(RoundedRectangle(cornerRadius: 6))
                }
            }
        }
        .padding(.horizontal, 16)
    }
}
