//
//  ServiceInfoBox.swift
//  MEEMONG-iOS
//
//  Created by 김보민 on 11/11/26.
//

import SwiftUI

struct ServiceInfoBox: View {
    let postDetail: PostDetailResponseDTO
    var isUpdatingLike = false
    let onLike: () -> Void
    
    var body: some View {
        VStack(spacing: 12){
            VStack(alignment: .leading, spacing: 4){
                HStack{
                    Text(postDetail.title)
                        .font(.headline)
                    Spacer()
                    PostLikeButton(
                        isLiked: postDetail.isLiked,
                        isUpdating: isUpdatingLike,
                        unselectedImage: .defaultBlack,
                        action: onLike
                    )
                }
                .frame(maxWidth: .infinity)
                .frame(height: 43)
                HStack(spacing: 8){
                    Text(PriceType(rawValue: postDetail.priceType)?.typetitle ?? "")
                        .font(.body2_regular)
                        .foregroundStyle(.meemongBlue)
                        .padding(.horizontal, 6)
                        .frame(height: 24)
                        .background(.bgBlue, in: RoundedRectangle(cornerRadius: 6))
                    if let originalPrice = postDetail.originalPrice{
                        HStack(spacing: 4){
                            Text(originalPrice.formatted())
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
                    if let discountRate = postDetail.discountRate {
                        HStack(spacing: 0){
                            Text("\(Int(discountRate))")
                            Text("%")
                        }
                        .font(.title)
                        .foregroundStyle(.meemongRed)
                    }
                    
                    if let displayPrice = postDetail.displayPrice {
                        Text(displayPrice.formatted())
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
                    Text(postDetail.treatmentTypes
                        .compactMap { TreatmentType(rawValue: $0)?.typetitle}
                        .joined(separator: ", "))
                    Text(postDetail.signatures
                        .compactMap { TreatmentType(rawValue: $0)?.typetitle}
                        .joined(separator: ", "))
                    Text((postDetail.shootingRanges ?? [])
                        .compactMap { ShootingRanges(rawValue: $0)?.typetitle}
                        .joined(separator: ", "))
                    Text(postDetail.shopName)
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
